# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD CoMPAS Components
Resource        ./general-config.robot
Resource        ./general-openscd.robot

*** Keywords ***
Open from CoMPAS
    [Arguments]                 ${name}   ${type}   ${expectedVersion}
    Click                       ${dialog-selector} compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type.upper()}")
    Click                       ${dialog-selector} compas-open compas-scl-list > mwc-list > mwc-list-item:has-text("${name}-${current-date}")
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Add to CoMPAS
    [Arguments]                 ${initialValue}   ${name}   ${type}   ${expectedVersion}
    # Make sure the initial value is entered. so we can continue.
    Get Text                    mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ==   ${initialValue}
    Fill Text                   mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ${name}-${current-date}
    Click                       mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select
    Click                       mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select > mwc-list-item[value="${type.upper()}"]
    Click                       mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Update in CoMPAS
    [Arguments]                 ${changeType}   ${name}   ${type}   ${expectedVersion}
    Click                       mwc-dialog#compas-save-dlg > compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Click                       mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

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
    Check Log           ${primaryMessage}      ${secondaryMessage}
