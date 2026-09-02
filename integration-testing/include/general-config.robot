# SPDX-FileCopyrightText: 2021 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

*** Settings ***
Documentation   Setup up configuration to run all Robot TestCases using the Browser Library (playwright)
Library         Browser  enable_presenter_mode=${enable_presenter_mode}
...                      run_on_failure=Make screenshot on failure
...                      retry_assertions_for=0:00:10
Library         OperatingSystem
Library         DateTime

*** Variables ***
${enable_presenter_mode}    false
${headless}                 true
${devtools}                 false

${browser}       %{BROWSER=firefox}
${url}           http://localhost/
${username}      scl-data-editor
${password}      editor

# Override locally with -v viewport_width:<n> -v viewport_height:<n> to fit your screen.
${viewport_width}     1920
${viewport_height}    1080

*** Keywords ***
Set global variables
    ${current-date}=    Get Current Date  result_format=%Y%m%d_%H%M%S
    Set Suite Variable  ${current-date}  ${current-date}
    Set Tags            ${browser}
    Set Log Level       DEBUG
