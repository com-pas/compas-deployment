# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Basic test cases for opening and saving SCL files to/from Local File and CoMPAS.
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Test Cases ***
TestCase001-01
    [Documentation]     Open project from Local File
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Select Tab          Substation
    Get Text            ${substation-editor-selector} section > h1:has-text("Sub1")

TestCase001-02
    [Documentation]     Open project from Local File and Add to CoMPAS (Rest)
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0

    Select Tab          Substation
    Get Text            ${substation-editor-selector} section > h1:has-text("Sub1")

TestCase001-03
    [Documentation]     Open project from CoMPAS (Rest)
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS.
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0

    Close OpenSCD
    Open OpenSCD and Login
    Change Websockets setting   False

    Open Menu           Open project
    Open from CoMPAS    ${sclname}   ${scltype}   1.0.0
    Close Menu

    Select Tab          Substation
    Get Text            ${substation-editor-selector} section > h1:has-text("Sub1")

TestCase001-04
    [Documentation]     Open project from CoMPAS (Rest) and Save to Local File
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS.
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0
    Close Menu

    Open Menu           Save project
    Save to local file  ${sclname}    ${scltype}
    Close Menu

TestCase001-05
    [Documentation]     Save a existing project from CoMPAS (Rest) as new project
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS.
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0
    Close Menu

    Open Menu           Save project as
    Save as to CoMPAS   ${sclname}-${current-date}-1.0.0   ${sclname}-as   ${scltype}   1.0.0
    Close Menu

TestCase001-06
    [Documentation]     Save local project as new version to existing project in CoMPAS (Rest)
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS.
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid    ${sclname}   ${scltype}   1.0.0

    Open Menu           Open project
    Open local file     MiniGrid    SCD

    Open Menu                Save as version
    Save version to CoMPAS   MINOR   ${sclname}   ${scltype}   1.1.0

TestCase001-11
    skip
    [Documentation]     Trying saving local file to CoMPAS (Rest) with invalid name
    # First we will open the local file to be saved.
    Open Menu           Open project
    Open local file     MiniGrid    SCD

    # Try saving the file with a invalid name
    Set Test Variable   ${sclname}  ${TEST NAME}-invalid/*name
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Get Text            mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ==   MiniGrid
    Fill Text           mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ${sclname}
    Click               mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select
    Click               mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select > mwc-list-item[value="${scltype}"]
    Click               mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait until executed
    Click               mwc-dialog#compas-save-dlg > mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Close Menu

    # Check if the expected error message is found
    Set Test Variable    ${secondaryMessage}    ApplicationError: Name is not a correct name to be used later as filename. (CORE-8000)
    Check CoMPAS Error   ${secondaryMessage}

TestCase001-51
    [Documentation]     Open project from Local File and Add to CoMPAS (Websocket)
    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0

    Select Tab          Substation
    Get Text            ${substation-editor-selector} section > h1:has-text("Sub1")

TestCase001-52
    [Documentation]     Open project from CoMPAS (Websocket)
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS.
    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             MiniGrid    SCD

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0

    Close OpenSCD
    Open OpenSCD and Login
    Change Websockets setting   True

    Open Menu           Open project
    Open from CoMPAS    ${sclname}   ${scltype}   1.0.0

    Select Tab          Substation
    Get Text            ${substation-editor-selector} section > h1:has-text("Sub1")

TestCase001-61
    skip
    [Documentation]     Trying saving local file to CoMPAS (Websocket) with invalid name
    # First we will open the local file to be saved.
    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             MiniGrid    SCD

    # Try saving the file with a invalid name
    Set Test Variable   ${sclname}  ${TEST NAME}-invalid/*name
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Get Text            mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ==   MiniGrid
    Fill Text           mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ${sclname}
    Click               mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select
    Click               mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select > mwc-list-item[value="${scltype}"]
    Click               mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait until executed
    Click               mwc-dialog#compas-save-dlg > mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Close Menu

    # Check if the expected error message is found
    Set Test Variable    ${secondaryMessage}    ApplicationError: Name is not a correct name to be used later as filename. (CORE-8000)
    Check CoMPAS Error   ${secondaryMessage}
