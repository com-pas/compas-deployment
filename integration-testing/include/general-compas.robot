# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD CoMPAS Components
Resource        ./general-config.robot
Resource        ./general-openscd.robot

*** Keywords ***
Initialize and Start OpenSCD
    Set global variables
    Open OpenSCD and Login
    Change Websockets setting   False

Open from CoMPAS
    [Arguments]                 ${name}   ${type}   ${expectedVersion}
    Click                       mwc-dialog#compas-open-dlg > compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type.upper()}")
    Select label                mwc-dialog#compas-open-dlg > compas-open    ${type}_${current-date}
    Click                       mwc-dialog#compas-open-dlg > compas-open compas-scl-list > filtered-list > mwc-list-item:has-text("${name}-${current-date}")
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Add to CoMPAS
    [Arguments]                 ${initialValue}   ${name}   ${type}   ${expectedVersion}
    # Make sure the initial value is entered. so we can continue.
    Get Text                    div#menuContent mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ==   ${initialValue}
    Fill Text                   div#menuContent mwc-dialog#compas-save-dlg > compas-save mwc-textfield#name label > input   ${name}-${current-date}
    Click                       div#menuContent mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select
    Click                       div#menuContent mwc-dialog#compas-save-dlg > compas-save compas-scltype-select mwc-select > mwc-list-item[value="${type.upper()}"]
    Add label                   div#menuContent mwc-dialog#compas-save-dlg > compas-save    ${type}_${current-date}
    Click                       div#menuContent mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Save as to CoMPAS
    [Arguments]                 ${initialValue}   ${name}   ${type}   ${expectedVersion}
    # Make sure the initial value is entered. so we can continue.
    Get Text                    mwc-dialog#compas-save-as-dlg > compas-save mwc-textfield#name label > input   ==   ${initialValue}
    Fill Text                   mwc-dialog#compas-save-as-dlg > compas-save mwc-textfield#name label > input   ${name}-${current-date}
    Click                       mwc-dialog#compas-save-as-dlg > compas-save compas-scltype-select mwc-select
    Click                       mwc-dialog#compas-save-as-dlg > compas-save compas-scltype-select mwc-select > mwc-list-item[value="${type.upper()}"]
    Add label                   mwc-dialog#compas-save-as-dlg > compas-save    ${type}_as_${current-date}
    Click                       mwc-dialog#compas-save-as-dlg > mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Update in CoMPAS
    [Arguments]                 ${changeType}   ${name}   ${type}   ${expectedVersion}
    Click                       mwc-dialog#compas-save-dlg > compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Add label                   mwc-dialog#compas-save-dlg > compas-save    ${type}_${current-date}_${expectedVersion.replace('.', '')}
    Click                       mwc-dialog#compas-save-dlg > mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}-${current-date}-${expectedVersion}    ${type}

Save version to CoMPAS
    [Arguments]                 ${changeType}   ${name}   ${type}   ${expectedVersion}
    Click                       mwc-dialog#compas-save-as-version-dlg > compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type.upper()}")
    Click                       mwc-dialog#compas-save-as-version-dlg > compas-open compas-scl-list > filtered-list > mwc-list-item:has-text("${name}-${current-date}")
    Click                       mwc-dialog#compas-save-as-version-dlg > compas-save compas-changeset-radiogroup mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]
    Click                       mwc-dialog#compas-save-as-version-dlg > mwc-button[slot="primaryAction"] > button
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

Add label
    [Arguments]     ${dialog}   ${label}
    Fill Text       ${dialog} compas-labels-field wizard-textfield#newLabel label > input     ${label}
    Click           ${dialog} compas-labels-field mwc-icon-button[icon="new_label"] > button

Select label
    [Arguments]     ${dialog}   ${label}
    Click           ${dialog} compas-scl-list oscd-filter-button#labelsFilter > mwc-icon-button > button
    Click           ${dialog} compas-scl-list oscd-filter-button#labelsFilter > mwc-dialog#filterDialog mwc-formfield > mwc-checkbox
    Click           ${dialog} compas-scl-list oscd-filter-button#labelsFilter > mwc-check-list-item[value="${label}"]
    Click           ${dialog} compas-scl-list oscd-filter-button#labelsFilter > mwc-dialog#filterDialog > mwc-button[slot="primaryAction"] > button
