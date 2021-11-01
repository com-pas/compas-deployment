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
    [Documentation]     Save multiple versions to CoMPAS
    Set Test Variable   ${sclname}  minigrid
    Set Test Variable   ${scltype}  SCD

    Open Menu               Open project
    Open local file         ${sclname}    ${scltype}
    Close Menu
    Check Title Filename    ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu               Save project
    Add to CoMPAS           ${sclname}    ${scltype}
    Close Menu
    Check Title Filename    ${sclname}-${current-date}-1.0.0    ${scltype}

    Open Menu               Save project
    Update in CoMPAS        MAJOR
    Close Menu
    Check Title Filename    ${sclname}-${current-date}-2.0.0    ${scltype}

    Open Menu               Save project
    Update in CoMPAS        MINOR
    Close Menu
    Check Title Filename    ${sclname}-${current-date}-2.1.0    ${scltype}

    Open Menu               Save project
    Update in CoMPAS        PATCH
    Close Menu
    Check Title Filename    ${sclname}-${current-date}-2.1.1    ${scltype}
