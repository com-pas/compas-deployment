*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD Components
Resource        ./general-config.robot

*** Variables ***
# Variables of Selectors commonly used.
${menu-selector}                mwc-drawer[id="menu"]
${dialog-selector}              wizard-dialog mwc-dialog
${substation-editor-selector}   substation-editor:nth-child(1) > editor-container

*** Keywords ***
Execute Test Setup
    Set global variables
    Open OpenSCD and Login

Execute Test Teardown
    Run Keyword If Test Passed      Take Screenshot     filename=${TEST NAME}-{index}  fullPage=true
    Close OpenSCD

Execute Teardown Failure
    Take Screenshot     filename=${TEST NAME}-failure-{index}  fullPage=true

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
    Mouse Button    click   x=350   y=100

Select Tab
    [Arguments]     ${tabname}
    Click           mwc-tab[label="${tabname}"] > button

Open local file
    [Arguments]         ${name}     ${type}
    ${promise}=         Promise To Upload File    ${CURDIR}/../test-files/${name}.${type.lower()}
    Click               ${dialog-selector} compas-open mwc-button[label="Open file..."] button
    ${upload_result}=   Wait For  ${promise}
    Get Style           open-scd > mwc-circular-progress-four-color > div[role="progressbar"]   opacity  ==  0
    Click               mwc-snackbar#issue > mwc-icon-button[slot="dismiss"] > button

Save to local file
    [Arguments]         ${name}     ${type}
    ${dl_promise}=      Promise To Wait For Download    ${CURDIR}/../../target/saved-files/${name}-${current-date}.${type.lower()}
    Click               ${dialog-selector} compas-save mwc-button[label="Save to file..."] button
    ${file_obj}=        Wait For  ${dl_promise}
    File Should Exist   ${file_obj}[saveAs]

Check Title Filename
    [Arguments]     ${filename}     ${scltype}
    Get Text        open-scd > mwc-drawer div#title:text-is("${filename}.${scltype.lower()}")
