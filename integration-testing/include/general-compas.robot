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
    # check if the title (filename) changed to the new expected one. This way we know we can close the menu.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}
    Close Menu

Add to CoMPAS
    [Arguments]                 ${name}   ${type}   ${expectedVersion}
    Fill Text                   ${dialog-selector} compas-save mwc-textfield#name input   ${name}-${current-date}
    Click                       ${dialog-selector} compas-save compas-scltype-radiogroup mwc-list > mwc-radio-list-item[value="${type.upper()}"]
    Take Screenshot             filename=EMBED  fullPage=true
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    # check if the title (filename) changed to the new expected one. This way we know we can close the menu.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}
    Close Menu

Update in CoMPAS
    [Arguments]                 ${changeType}   ${name}   ${type}   ${expectedVersion}
    Click                       ${dialog-selector} compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    # check if the title (filename) changed to the new expected one. This way we know we can close the menu.
    Check Title Filename        ${sclname}-${current-date}-${expectedVersion}    ${scltype}
    Close Menu
