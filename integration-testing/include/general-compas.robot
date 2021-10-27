*** Settings ***
Documentation   Generic variables and Keywords to work with the OpenSCD CoMPAS Components
Resource        ./general-config.robot
Resource        ./general-openscd.robot

*** Variables ***
# Variables of Selectors commonly used.
${compas-versions-editor-selector}  compas-versions-plugin

*** Keywords ***
Open from CoMPAS
    [Arguments]     ${name}     ${type}
    Click           ${dialog-selector} compas-open compas-scltype-list > mwc-list > mwc-list-item >> span:has-text("${type}")
    Click           ${dialog-selector} compas-open compas-scl-list > mwc-list > mwc-list-item:has-text("${name}-${current-date}")
    Get Style       open-scd > mwc-circular-progress-four-color > div[role="progressbar"]   opacity  ==  0

Add to CoMPAS
    [Arguments]     ${name}     ${type}
    Fill Text       ${dialog-selector} compas-save mwc-textfield#name input   ${name}-${current-date}
    Click           ${dialog-selector} compas-save compas-scltype-radiogroup mwc-list > mwc-radio-list-item[value="CID"]
    Click           ${dialog-selector} mwc-button[slot="primaryAction"] > button
    Get Style       open-scd > mwc-circular-progress-four-color > div[role="progressbar"]   opacity  ==  0
