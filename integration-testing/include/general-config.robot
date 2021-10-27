*** Settings ***
Documentation   Setup up configuration to run all Robot TestCases using the Browser Library (playwright)
Library         Browser  enable_presenter_mode=${enable_presenter_mode}
...                      run_on_failure=Execute Teardown Failure
Library         OperatingSystem
Library         DateTime

*** Variables ***
${enable_presenter_mode}    false
${headless}                 false
${devtools}                 false

${browser}       firefox
${url}           http://localhost/
${username}      scl-data-editor
${password}      editor

*** Keywords ***
Set global variables
    ${current-date}=    Get Current Date  result_format=%Y%m%d_%H%M%S
    Set Suite Variable  ${current-date}  ${current-date}
