# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Basic test cases for executing the SCL Auto Alignment Service.
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Test Cases ***
TestCase004-01
    [Documentation]     Execute the SCL Auto Alignment.
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Open Menu           Auto Align SLD
    Check Checkbox      ${dialog-selector} compas-auto-alignment section#substationsToAlign > mwc-list > mwc-check-list-item:nth-child(1) mwc-checkbox input[type="checkbox"]
    Click               ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
