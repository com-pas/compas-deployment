# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Basic test cases for opening and saving SCL files to/from Local File and CoMPAS.
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Keywords ***
Open Project from CIM
    [Arguments]         ${name}
    ${promise}=         Promise To Upload File    ${CURDIR}/test-files/${name}.xml
    Open Menu           Project from CIM
    ${upload_result}=   Wait For  ${promise}
    Wait for Progressbar
    Close Issues Snackbar
    Close Menu

*** Test Cases ***
TestCase003-01
    [Documentation]     Create project from CIM File
    Set Test Variable   ${sclname}  MiniGridTestConfiguration_BC_EQ_v3.0.0
    Set Test Variable   ${scltype}  SSD

    Open Project from CIM   ${sclname}
    Check Title Filename    ${sclname}    ${scltype}

    Select Tab      Substation
    Get Text        ${substation-editor-selector} div#header > h1:has-text("Sub1")
