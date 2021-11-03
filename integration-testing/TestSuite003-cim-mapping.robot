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
    [Arguments]                ${name}   ${scltype}
    ${promise}=                Promise To Upload File    ${CURDIR}/test-files/${name}.xml
    Open Menu                  Project from CIM
    ${upload_result}=          Wait For  ${promise}
    Sleep                      0.5s   Wait until loading file starts.
    Wait for Progressbar
    Check Title Filename       ${name}   ${scltype}
    Close Menu

*** Test Cases ***
TestCase003-01
    [Documentation]         Create project from CIM File
    Set Test Variable       ${sclname}  MiniGridTestConfiguration_BC_EQ_v3.0.0
    Set Test Variable       ${scltype}  SSD

    Open Project from CIM   ${sclname}   ${scltype}

    Select Tab              Substation
    Get Text                ${substation-editor-selector} div#header > h1:has-text("Sub1")
