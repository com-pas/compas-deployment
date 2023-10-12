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
    Open Menu            [WIP] Validate using OCL
    Wait until executed
    Close Menu

*** Test Cases ***
TestCase005-01
    skip
    [Documentation]     Execute the SCL Validator (Websockets) with OCL Validation Errros.
    Set Test Variable   ${sclname}  SingleSubstation
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Navigation Menu       menu.viewDiag
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(4)    ==   [WIP] Validate using OCL
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   332

TestCase005-02
    skip
    [Documentation]     Execute the SCL Validator (REST API) with OCL Validation Errros.
    Set Test Variable   ${sclname}  SingleSubstation
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Validator

    Open Navigation Menu       menu.viewDiag
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(4)    ==   [WIP] Validate using OCL
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   332

TestCase005-03
    skip
    [Documentation]     Execute the SCL Validator (Websockets) with XSD Validation Errors.
    Set Test Variable   ${sclname}  XsdValidationErrors
    Set Test Variable   ${scltype}  SCD

    Change Websockets setting   True
    Open Menu                   Open project
    Open local file             ${sclname}    ${scltype}

    Execute SCL Validator

    Open Navigation Menu       menu.viewDiag
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(12)   ==   [WIP] Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(14)    title   *=   Attribute 'type' must appear on element 'DO'.
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   11

TestCase005-04
    skip
    [Documentation]     Execute the SCL Validator (REST API) with XSD Validation Errors.
    Set Test Variable   ${sclname}  XsdValidationErrors
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Execute SCL Validator

    Open Navigation Menu       menu.viewDiag
    Get Text            mwc-dialog#diagnostic > filtered-list > mwc-list-item:nth-child(12)   ==   [WIP] Validate using OCL
    Get Attribute       mwc-dialog#diagnostic > filtered-list > abbr:nth-child(14)    title   *=   Attribute 'type' must appear on element 'DO'.
    Get Element Count   mwc-dialog#diagnostic > filtered-list > abbr                          ==   11
