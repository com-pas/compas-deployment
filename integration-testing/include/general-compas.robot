# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD CoMPAS Components
Resource        ./general-config.robot
Resource        ./general-openscd.robot

*** Variables ***
# Variables of Selectors commonly used.
${compas-versions-editor-selector}  compas-versions-plugin

*** Keywords ***
Open from CoMPAS
    [Arguments]                 ${name}   ${type}   ${expectedVersion}
    Click                       ${dialog-selector} compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type.upper()}")
    Click                       ${dialog-selector} compas-open compas-scl-list > mwc-list > mwc-list-item:has-text("${name}-${current-date}")
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}

Add to CoMPAS
    [Arguments]                 ${initialValue}   ${name}   ${type}   ${expectedVersion}
    # Make sure the initial value is entered. so we can continue.
    Get Text                    ${dialog-selector} compas-save mwc-textfield#name input   ==   ${initialValue}
    Fill Text                   ${dialog-selector} compas-save mwc-textfield#name input   ${name}-${current-date}
    Click                       ${dialog-selector} compas-save compas-scltype-radiogroup mwc-list > mwc-radio-list-item[value="${type.upper()}"]
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}

Update in CoMPAS
    [Arguments]                 ${changeType}   ${name}   ${type}   ${expectedVersion}
    Click                       ${dialog-selector} compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}

Change Websockets setting
    [Arguments]                 ${checked}
    Open Menu                   CoMPAS Settings
    IF                          ${checked} == True
      Check Checkbox            ${dialog-selector} compas-settings mwc-switch#useWebsockets #basic-switch
    ELSE
      Uncheck Checkbox          ${dialog-selector} compas-settings mwc-switch#useWebsockets #basic-switch
    END
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu

Check CoMPAS Error
    [Arguments]         ${secondaryMessage}
    Set Test Variable   ${primaryMessage}      Error communicating with CoMPAS Ecosystem
    Check Log           ${primaryMessage}      ApplicationError: ${secondaryMessage}
