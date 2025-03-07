# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD Components
Resource        ./general-config.robot

*** Variables ***
# Variables of Selectors commonly used.
${menu-selector}                mwc-drawer[id='menu']
${menu-button}                  mwc-icon-button[label="Menu"]
${nav-selector}                 mwc-top-app-bar-fixed
${dialog-selector}              wizard-dialog
${substation-editor-selector}   substation-editor:first-child > action-pane

*** Keywords ***
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
    Click               button[type="submit"][id="kc-login"]
    Wait For Response
    Check Browser Title

Close OpenSCD
    Close Browser

Check Browser Title
    Get Title       ==    CoMPAS - OpenSCD

Open Menu
    [Arguments]     ${menuItemTitle}
    Click           ${menu-button} > button
    Click           ${menu-selector} mwc-list > mwc-list-item >> span:text-is("${menuItemTitle}")

Open Navigation Menu
    [Arguments]     ${menuItemTitle}
    Click           ${nav-selector} mwc-icon-button[label="${menuItemTitle}"] > button

Close Menu
    # To make the editors visible again we need to close the menu.
    # We click outside the menu somewhere in the browser.
    Mouse Button    click   x=350   y=350
    Sleep           100 milliseconds

Enable Extension
    [Arguments]           ${extensionName}
    Open Menu             Plug-ins
    ${checkboxChecked}=   Get Element States   mwc-list#pluginList > mwc-check-list-item:has-text("${extensionName}") input[type="checkbox"]   *=   checked
    IF                    ${checkboxChecked} == False
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
    Click                       mwc-dialog#compas-open-dlg > compas-open mwc-button[label="Open file..."] button
    ${upload_result}=           Wait For  ${promise}
    Sleep                       0.5s   Wait until loading file starts.
    Wait for dialog is closed
    Close Menu
    # check if the title (filename) changed to the new expected one.
    Check Title Filename        ${name}    ${type}

Save to local file
    [Arguments]         ${name}     ${type}
    ${dl_promise}=      Promise To Wait For Download    ${OUTPUT DIR}/saved-files/${name}-${current-date}.${type.lower()}
    Click               mwc-dialog#compas-save-dlg > compas-save mwc-button[label="Save to file..."] button
    ${file_obj}=        Wait For  ${dl_promise}
    File Should Exist   ${file_obj}[saveAs]
    Wait for dialog is closed
    Close Menu

Check Title Filename
    [Arguments]     ${filename}     ${scltype}
    Get Text        compas-layout > div > mwc-drawer span[slot="subtitle"]   ==   ${filename}.${scltype.lower()}

Wait for dialog is closed
    Wait until executed
    Wait For Elements State   ${dialog-selector}   hidden

Wait until executed
    Wait For Function         element => element.className.indexOf('mdc-linear-progress--closed') >= 0   oscd-waiter > mwc-linear-progress > div[role="progressbar"]   timeout=30s

Close Issues Snackbar
    ${snackbarVisible}=   Get Element States   mwc-snackbar#issue > mwc-icon-button[slot="dismiss"] > button    *=    visible
    IF                    ${snackbarVisible} == True
    Click                 mwc-snackbar#issue > mwc-icon-button[slot="dismiss"] > button
    END

Check Log
    [Arguments]   ${primaryMessage}   ${secondaryMessage}
    Open Navigation Menu     menu.viewLog
    Get Text      mwc-dialog#log abbr[title="${primaryMessage}"]
    Get Text      mwc-dialog#log abbr[title="${primaryMessage}"] span[slot="secondary"]:has-text("${secondaryMessage}")
    Click         mwc-dialog#log mwc-button[slot="primaryAction"] > button
    Set Strict Mode         true
    Wait for dialog is closed
    Close Menu
