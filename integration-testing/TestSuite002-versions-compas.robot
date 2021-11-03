# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Test cases for testing the CoMPAS Versions editor and saving multiple versions
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

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
