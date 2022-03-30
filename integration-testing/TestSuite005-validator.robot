# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Basic test cases for executing the SCL Validator Service.
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Keywords ***
Execute SCL Validator
    Open Menu            Validate using OCL
    Wait until executed
    Close Menu

*** Test Cases ***
TestCase005-01
    [Documentation]     Execute the SCL Validator for a Simple Configuration.
    Set Test Variable   ${sclname}  SingleSubstation
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic mwc-list-item:nth-child(4)   ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic abbr:nth-child(6)    title   *=   [SCD File] DataTypeTemplates section is mandatory (line 1)
    Get Element Count   mwc-dialog#diagnostic abbr                         ==   333
