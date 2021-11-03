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
    [Arguments]        ${name}     ${type}
    Click              ${dialog-selector} compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type.upper()}")
    Click              ${dialog-selector} compas-open compas-scl-list > mwc-list > mwc-list-item:has-text("${name}-${current-date}")
    Wait for Progressbar
    Wait for dialog is closed
    Close Menu

Add to CoMPAS
    [Arguments]        ${name}     ${type}
    Fill Text          ${dialog-selector} compas-save mwc-textfield#name input   ${name}-${current-date}
    Click              ${dialog-selector} compas-save compas-scltype-radiogroup mwc-list > mwc-radio-list-item[value="${type.upper()}"]
    Click              ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for Progressbar
    Wait for dialog is closed
    Close Menu

Update in CoMPAS
    [Arguments]        ${changeType}
    Click              ${dialog-selector} compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Click              ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for Progressbar
    Wait for dialog is closed
    Close Menu
