# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Test cases for testing the CoMPAS Versions editor and saving multiple versions
Resource        ./include/general-compas.robot

Test Setup      Initialize and Start OpenSCD
Test Teardown   Make screenshot and Stop OpenSCD

*** Variables ***
# Variables of Selectors commonly used.
${compas-versions-editor-selector}  oscd-plugin932e8e83a469de68

*** Keywords ***
Upload new version
    [Arguments]                 ${changeType}   ${name}   ${type}
    Click                       ${compas-versions-editor-selector} mwc-icon-button[icon="playlist_add"] > button
    Click                       ${dialog-selector} compas-upload-version compas-changeset-radiogroup > mwc-list > mwc-radio-list-item[value="${changeType.upper()}"]

    ${promise}=                 Promise To Upload File    ${CURDIR}/test-files/${name}.${type.lower()}
    Click                       ${dialog-selector} compas-upload-version mwc-button[label="Select file..."] button
    ${upload_result}=           Wait For  ${promise}

    Click                       ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed

Initialize Versions
    [Arguments]         ${create-multiple-versions}
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu           Save project
    Add to CoMPAS       MiniGrid   ${sclname}   ${scltype}   1.0.0

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

    IF                  ${create-multiple-versions} == True
    Open Menu           Save project
    Update in CoMPAS    MAJOR   ${sclname}   ${scltype}   2.0.0
    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    END

Delete first substation
    Select Tab  Substation
    # Got to the Substation tab and remove the first substation (Sub1), next the first substation should be Sub2.
    Get Text    ${substation-editor-selector} section > h1:has-text("Sub1")
    Click       ${substation-editor-selector} > abbr[title="Remove"] > mwc-icon-button[icon="delete"]
    Get Text    ${substation-editor-selector} section > h1:has-text("Sub2")


*** Test Cases ***
TestCase002-01
    [Documentation]     Check no versions on tab CoMPAS Versions
    Set Test Variable   ${sclname}  MiniGrid
    Set Test Variable   ${scltype}  SCD

    Open Menu           Open project
    Open local file     ${sclname}    ${scltype}

    Select Tab          CoMPAS Versions
    Get Text            ${compas-versions-editor-selector} mwc-list > mwc-list-item > span:has-text("No versions found")

TestCase002-02
    [Documentation]      Check one versions on tab CoMPAS Versions
    Initialize Versions  False

    Select Tab           CoMPAS Versions
    Get Element Count    ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

TestCase002-03
    [Documentation]      Check every save created a new version on tab CoMPAS Versions
    Initialize Versions  False

    Open Menu            Save project
    Update in CoMPAS     MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab           CoMPAS Versions
    Get Element Count    ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2

    Open Menu            Save project
    Update in CoMPAS     MINOR   ${sclname}   ${scltype}   2.1.0

    Select Tab           CoMPAS Versions
    Get Element Count    ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  3

    Open Menu            Save project
    Update in CoMPAS     PATCH   ${sclname}   ${scltype}   2.1.1

    Select Tab           CoMPAS Versions
    Get Element Count    ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  4

TestCase002-10
    [Documentation]      Added a new version from a local file
    Initialize Versions  False

    Upload new version   MAJOR   MiniGrid   SCD

    Select Tab           CoMPAS Versions
    Get Element Count    ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    Get Text             ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:last-child   *=   ${sclname}-${current-date} (Version: 2.0.0)

TestCase002-11
    [Documentation]      Restore first version from the list of versions
    Initialize Versions  True

    # First check that the cancel is working form the dialog.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:first-child
    Click                  ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Check Title Filename   ${sclname}-${current-date}-2.0.0   ${scltype}
    # Next restore the first version, title should reflect this.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:first-child
    Click                  ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Check Title Filename   ${sclname}-${current-date}-1.0.0   ${scltype}

TestCase002-20
    [Documentation]      Delete first version from the list of versions
    Initialize Versions  True

    # First check that the cancel is working form the dialog.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:nth-child(2)
    Click                  ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Get Element Count      ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    # Next delete the first version, number of items should reflect this.
    Click                  ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:first-child mwc-icon:nth-child(2)
    Click                  ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Get Element Count      ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

TestCase002-21
    [Documentation]      Delete all versions from CoMPAS
    Initialize Versions  True

    # First check that the cancel is working form the dialog.
    Click               ${compas-versions-editor-selector} mwc-icon-button[icon="delete_forever"] > button
    Click               ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  2
    # Next delete all versions.
    Click               ${compas-versions-editor-selector} mwc-icon-button[icon="delete_forever"] > button
    Click               ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Wait for dialog is closed
    Get Text            ${compas-versions-editor-selector} mwc-list > mwc-list-item > span:has-text("No versions found")

TestCase002-30
    [Documentation]      Compare current version from CoMPAS
    Initialize Versions  False

    Delete first substation

    Select Tab  CoMPAS Versions
    # Next select the first version from the list and compare this to the current open edited version.
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(1) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare version (current)"] > button
    ${listItemValue}=   Evaluate JavaScript    mwc-dialog#compareDialog > plain-compare-list
    ...        (element) => {
    ...            return element.shadowRoot.querySelector('mwc-list > mwc-list-item > span').textContent
    ...        }
    Should Contain      ${listItemValue}    Substation
    Click       mwc-dialog#compareDialog > mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

TestCase002-31
    [Documentation]      Compare current version from CoMPAS not selecting correct number of versions
    Initialize Versions  True

    Select Tab  CoMPAS Versions
    # Now select no versions and try to compare, should show a error dialog.
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare version (current)"] > button
    Get Text    ${dialog-selector} div#wizard-content > span:has-text("Select maximum one version to compare the current project against.")
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

    # Now select two versions and try to compare, should show a error dialog.
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(1) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(2) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare version (current)"] > button
    Get Text    ${dialog-selector} div#wizard-content > span:has-text("Select maximum one version to compare the current project against.")
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

TestCase002-32
    [Documentation]      Compare two versions from CoMPAS
    Initialize Versions  False

    Delete first substation
    Open Menu            Save project
    Update in CoMPAS     MAJOR   ${sclname}   ${scltype}   2.0.0

    Select Tab  CoMPAS Versions
    # Next select the first and second version from the list and compare this to the current open edited version.
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(1) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(2) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare versions"] > button
    ${listItemValue}=   Evaluate JavaScript    mwc-dialog#compareDialog > plain-compare-list
    ...        (element) => {
    ...            return element.shadowRoot.querySelector('mwc-list > mwc-list-item > span').textContent
    ...        }
    Should Contain      ${listItemValue}    Substation
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

TestCase002-33
    [Documentation]      Compare versions from CoMPAS not selecting correct number of versions
    Initialize Versions  True

    Open Menu            Save project
    Update in CoMPAS     MAJOR   ${sclname}   ${scltype}   3.0.0

    Select Tab  CoMPAS Versions
    # Now select no versions and try to compare, should show a error dialog.
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare versions"] > button
    Get Text    ${dialog-selector} div#wizard-content > span:has-text("Select maximum two versions to compare with each other.")
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

    # Now select one versions and try to compare, should show a error dialog.
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(1) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare versions"] > button
    Get Text    ${dialog-selector} div#wizard-content > span:has-text("Select maximum two versions to compare with each other.")
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed

    # Now select three versions (first is already selected) and try to compare, should show a error dialog.
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(2) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-list > mwc-check-list-item:nth-child(3) mwc-checkbox
    Click       ${compas-versions-editor-selector} mwc-fab[label="Compare versions"] > button
    Get Text    ${dialog-selector} div#wizard-content > span:has-text("Select maximum two versions to compare with each other.")
    Click       ${dialog-selector} mwc-button[slot="secondaryAction"] > button
    Wait for dialog is closed
