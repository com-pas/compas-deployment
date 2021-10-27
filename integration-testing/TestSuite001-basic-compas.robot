*** Settings ***
Documentation   Some basic test cases, like opening and saving files.
Resource        ./include/general-compas.robot

Test Setup      Execute Test Setup
Test Teardown   Execute Test Teardown

*** Variables ***
${TEST_CASE_BASE}       TestCase001

*** Test Cases ***
${TEST_CASE_BASE}-01
    [Documentation]     Open project from Local File
    Set Test Variable   ${sclname}  minigrid
    Set Test Variable   ${scltype}  SCD

    Open Menu         Open project
    Open local file   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}    ${scltype}

    Select Tab      Substation
    Get Text        ${substation-editor-selector} div#header > h1:has-text("Sub1")

    Select Tab      CoMPAS Versions
    Get Text        ${compas-versions-editor-selector} mwc-list > mwc-list-item > span:has-text("No versions found")

${TEST_CASE_BASE}-02
    [Documentation]     Open project from Local File and Add to CoMPAS
    Set Test Variable   ${sclname}  minigrid
    Set Test Variable   ${scltype}  SCD

    Open Menu         Open project
    Open local file   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu         Save project
    Add to CoMPAS     ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}-${current-date}-1.0.0    ${scltype}

    Select Tab      Substation
    Get Text        ${substation-editor-selector} div#header > h1:has-text("Sub1")

    Select Tab          CoMPAS Versions
    Get Element Count   ${compas-versions-editor-selector} mwc-list > mwc-check-list-item   ==  1

${TEST_CASE_BASE}-03
    [Documentation]     Open project from CoMPAS
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS
    Set Test Variable   ${sclname}  minigrid
    Set Test Variable   ${scltype}  SCD

    Open Menu         Open project
    Open local file   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu       Save project
    Add to CoMPAS   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}-${current-date}-1.0.0    ${scltype}

    Close OpenSCD
    Open OpenSCD and Login

    Open Menu         Open project
    Open from CoMPAS  ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}-${current-date}-1.0.0    ${scltype}

${TEST_CASE_BASE}-04
    [Documentation]     Open project from CoMPAS and Save to Local File
    # First we need to add a project to CoMPAS to be able to open it from CoMPAS
    Set Test Variable   ${sclname}  minigrid
    Set Test Variable   ${scltype}  SCD

    Open Menu         Open project
    Open local file   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}    ${scltype}

    Set Test Variable   ${sclname}  ${TEST NAME}
    Set Test Variable   ${scltype}  CID

    Open Menu       Save project
    Add to CoMPAS   ${sclname}    ${scltype}
    Close Menu

    Check Title Filename    ${sclname}-${current-date}-1.0.0    ${scltype}

    Open Menu           Save project
    Save to local file  ${sclname}    ${scltype}
    Close Menu
