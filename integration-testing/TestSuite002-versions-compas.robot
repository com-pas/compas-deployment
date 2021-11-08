# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Test cases for testing the CoMPAS Versions editor and saving multiple versions
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Keywords ***
Upload new version
    [Arguments]                 ${changeType}   ${name}   ${type}
    Click                       ${compas-versions-editor-selector} mwc-icon-button[icon="playlist_add"] > button
    Click                       ${dialog-selector} compas-upload-version compas-changeset-radiogroup > mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]

    ${promise}=                 Promise To Upload File    ${CURDIR}/test-files/${name}.${type.lower()}
    Click                       ${dialog-selector} compas-upload-version mwc-button[label="Select file..."] button
    ${upload_result}=           Wait For  ${promise}

    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed

*** Test Cases ***
TestCase002-01
    [Documentation]     Check no versions on tab CoMPAS Versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Select Tab          CoMPAS Versions
    Get Text            ${compas-versions-editor-selector} mwc-list > mwc-list-item > span:has-text("No versions found")

TestCase002-02
    [Documentation]     Check one versions on tab CoMPAS Versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

TestCase002-03
    [Documentation]     Check every save created a new version on tab CoMPAS Versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    Open Menu           Save project
    Update in CoMPAS    MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2

    Open Menu           Save project
    Update in CoMPAS    MINOR   ${sclname}   ${scltype}   2.1.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  3

    Open Menu           Save project
    Update in CoMPAS    PATCH   ${sclname}   ${scltype}   2.1.1

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  4

TestCase002-04
    [Documentation]     Added a new version from a local file
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    Upload new version  MAJOR   MiniGrid   SCD

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    Get Text            ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:last-child   *=   ${sclname}-${current-date} (2.0.0)

TestCase002-05
    [Documentation]     Restore first version from the list of versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    Open Menu           Save project
    Update in CoMPAS    MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2

    # First check that the cancel is working form the dialog.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:first-child
    Click                  ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Check Title Filename   ${sclname}-${current-date}-2.0.0   ${scltype}
    # Next restore the first version, title should reflect this.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:first-child
    Click                  ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Check Title Filename   ${sclname}-${current-date}-1.0.0   ${scltype}

TestCase002-06
    [Documentation]     Delete first version from the list of versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    Open Menu           Save project
    Update in CoMPAS    MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2

    # First check that the cancel is working form the dialog.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:nth-child(2)
    Click                  ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Get Element Count      ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    # Next delete the first version, number of items should reflect this.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:nth-child(2)
    Click                  ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Get Element Count      ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

TestCase002-07
    [Documentation]     Delete all versions from CoMPAS
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    Open Menu           Save project
    Update in CoMPAS    MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2

    # First check that the cancel is working form the dialog.
    Click                  ${compas-versions-editor-selector} mwc-icon-button[icon="delete_forever"] > button
    Click                  ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Get Element Count      ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    # Next delete all versions.
    Click                  ${compas-versions-editor-selector} mwc-icon-button[icon="delete_forever"] > button
    Click                  ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Get Text               ${compas-versions-editor-selector} mwc-list > mwc-list-item > span:has-text("No versions found")
