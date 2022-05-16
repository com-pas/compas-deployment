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
    [Documentation]     Execute the SCL Validator (Websockets) with OCL Validation Errros.
    Set Test Variable   ${sclname}  SingleSubstation
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(4)    ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(6)    title    *=   OCL/FileSpecifics/ICD-IID-SED/DataTypeTemplates_required;1;DataTypeTemplates section is mandatory
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   332

TestCase005-02
    [Documentation]     Execute the SCL Validator (REST API) with OCL Validation Errros.
    Set Test Variable   ${sclname}  SingleSubstation
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   False
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(4)    ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(6)    title    *=   OCL/FileSpecifics/ICD-IID-SED/DataTypeTemplates_required;1;DataTypeTemplates section is mandatory
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   332

TestCase005-03
    [Documentation]     Execute the SCL Validator (Websockets) with XSD Validation Errors.
    Set Test Variable   ${sclname}  XsdValidationErrors
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(12)   ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(14)    title   *=   [XSD validation] (line: 32, column: 47): cvc-complex-type.4: Attribute 'type' must appear on element 'DO'.
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   11

TestCase005-04
    [Documentation]     Execute the SCL Validator (REST API) with XSD Validation Errors.
    Set Test Variable   ${sclname}  XsdValidationErrors
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   False
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Menu           View diagnostics
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(12)   ==   Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(14)    title   *=   [XSD validation] (line: 32, column: 47): cvc-complex-type.4: Attribute 'type' must appear on element 'DO'.
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   11
