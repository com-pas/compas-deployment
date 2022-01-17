# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Basic test cases for executing the SCL Auto Alignment Service.
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Variables ***
${substation1}                  _af9a4ae3-ba2e-4c34-8e47-5af894ee20f4
${substation1VoltageLevel}      ${substation1}>S1 110kV
${substation3}                  _974565b1-ac55-4901-9f48-afc7ef5486df
${substation3VoltageLevel}      ${substation3}>S3 110kV

*** Keywords ***
Execute SCL Auto Alignment
    [Arguments]                 @{substationNames}
    Open Menu                   Auto Align SLD
    FOR   ${substationName}    IN   @{substationNames}
       Check Checkbox           ${dialog-selector} compas-auto-alignment section#substationsToAlign > mwc-list > mwc-check-list-item:has-text("${substationName}") input[type="checkbox"]
    END
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu

Select SLD Substation
    [Arguments]         ${id}
    # First click on the selectbox to open the dropdown box, to make the values visible.
    Click               single-line-diagram-plugin mwc-select[id="substationSelector"]
    # Now we can select the correct substation.
    Click               single-line-diagram-plugin mwc-select[id="substationSelector"] > mwc-list-item[value="${id}"]

Check X/Y Coordinates
    [Arguments]         ${id}   ${x}    ${y}
    Get Attribute       single-line-diagram-plugin svg g[id="${id}"]   sxy:x   ==  ${x}
    Get Attribute       single-line-diagram-plugin svg g[id="${id}"]   sxy:y   ==  ${y}

*** Test Cases ***
TestCase004-01
    [Documentation]     Execute the SCL Auto Alignment for a single Substation.
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Enable Extension    Single Line Diagram
    Enable Extension    Auto Align SLD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Auto Alignment  Sub1

    Select Tab               Single Line Diagram
    Select SLD Substation    ${substation1}
    Check X/Y Coordinates    ${substation1VoltageLevel}    36    10
    Select SLD Substation    ${substation3}
    Check X/Y Coordinates    ${substation3VoltageLevel}    0     0

TestCase004-02
    [Documentation]     Execute the SCL Auto Alignment for a multiple Substation.
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Enable Extension    Single Line Diagram
    Enable Extension    Auto Align SLD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Auto Alignment  Sub1   Sub3

    Select Tab               Single Line Diagram
    Select SLD Substation    ${substation1}
    Check X/Y Coordinates    ${substation1VoltageLevel}    36    10
    Select SLD Substation    ${substation3}
    Check X/Y Coordinates    ${substation3VoltageLevel}    12    8

