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
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(4)    ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(6)    title    *=   [SCD File] DataTypeTemplates section is mandatory (line 1)
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   332

TestCase005-02
    [Documentation]     Execute the SCL Validator for XSD Errors.
    Set Test Variable   ${sclname}  XsdValidationErrors
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(12)   ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(14)    title   *=   [XSD validation] (line: 32, column: 47): cvc-complex-type.4: Attribute 'type' must appear on element 'DO'.
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   11
