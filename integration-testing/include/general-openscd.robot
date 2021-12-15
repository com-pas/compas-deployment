# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD Components
Resource        ./general-config.robot

*** Variables ***
# Variables of Selectors commonly used.
${menu-selector}                mwc-drawer[id="menu"]
${dialog-selector}              wizard-dialog
${substation-editor-selector}   substation-editor:first-child > action-pane

*** Keywords ***
Initialize and Start OpenSCD
    Set global variables
    Open OpenSCD and Login

Make screenshot and Stop OpenSCD
    Run Keyword If Test Passed      Take Screenshot     filename=EMBED  fullPage=true
    Close OpenSCD

Make screenshot on failure
    Take Screenshot     filename=EMBED  fullPage=true

Open OpenSCD and Login
    New Browser         browser=${browser}
    ...                 headless=${headless}
    ...                 devtools=${devtools}
    New Context         acceptDownloads=True
    New Page            url=${url}
    Set Viewport Size   1920    1080
    Fill Text           input[id="username"]     ${username}
    Fill Secret         input[id="password"]     $password
    Click               input[type="submit"][id="kc-login"]
    Wait For Response
    Check Browser Title

Close OpenSCD
    Close Browser

Check Browser Title
    Get Title       ==    CoMPAS - OpenSCD

Open Menu
    [Arguments]     ${menuItemTitle}
    Click           ${menu-selector} mwc-icon-button[label="Menu"] > button
    Click           ${menu-selector} mwc-list > mwc-list-item >> span:has-text("${menuItemTitle}")

Close Menu
    # To make the editors visible again we need to close the menu.
    # We click outside the menu somewhere in the browser.
    Mouse Button    click   x=350   y=350
    Sleep           100 milliseconds

Enable Extension
    [Arguments]         ${extensionName}
    Open Menu           Extensions
    ${checkboxState}=   Get Element State   mwc-list#pluginList > mwc-check-list-item:has-text("${extensionName}") input[type="checkbox"]   Checked
    IF                  ${checkboxState} == False
    Check Checkbox      mwc-list#pluginList > mwc-check-list-item:has-text("${extensionName}") input[type="checkbox"]
    END
    # Press the escape key to close the dialog.
    Keyboard Key        press    Escape
    Sleep               100 milliseconds
    Close Menu

Select Tab
    [Arguments]     ${tabname}
    Click           mwc-tab[label="${tabname}"] > button

Open local file
    [Arguments]                 ${name}     ${type}
    ${promise}=                 Promise To Upload File    ${CURDIR}/../test-files/${name}.${type.lower()}
    Click                       ${dialog-selector} compas-open mwc-button[label="Open file..."] button
    ${upload_result}=           Wait For  ${promise}
    Sleep                       0.5s   Wait until loading file starts.
    Wait for dialog is closed
    # check if the title (filename) changed to the new expected one. This way we know we can close the menu.
    Check Title Filename        ${name}    ${scltype}
    Close Menu

Save to local file
    [Arguments]         ${name}     ${type}
    ${dl_promise}=      Promise To Wait For Download    ${OUTPUT DIR}/saved-files/${name}-${current-date}.${type.lower()}
    Click               ${dialog-selector} compas-save mwc-button[label="Save to file..."] button
    ${file_obj}=        Wait For  ${dl_promise}
    File Should Exist   ${file_obj}[saveAs]
    Wait for dialog is closed
    Close Menu

Check Title Filename
    [Arguments]     ${filename}     ${scltype}
    Get Text        open-scd > mwc-drawer div#title   ==   ${filename}.${scltype.lower()}

Wait for dialog is closed
    Wait For Function         element => element.style.opacity==0   open-scd > mwc-circular-progress-four-color > div[role="progressbar"]
    Wait For Elements State   ${dialog-selector}   hidden

Close Issues Snackbar
    ${snackbar}=        Get Element State   mwc-snackbar#issue > mwc-icon-button[slot="dismiss"] > button
    IF                  ${snackbar} == 'visible'
    Click               mwc-snackbar#issue > mwc-icon-button[slot="dismiss"] > button
    END
