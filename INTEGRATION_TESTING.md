<!--
SPDX-FileCopyrightText: 2021 Alliander N.V.

SPDX-License-Identifier: Apache-2.0
-->

# Integration Testing

To improve the quality of the application more beside the testing in the separate repositories we also created some integration
tests to test all components together. The integration tests are executed against the Docker Compose version in this project.

We are using the [Robot Framework](https://robotframework.org/) to execute the integration tests. For the Robot Framework we are
using the [Browser Library](https://github.com/MarketSquare/robotframework-browser) to do the Web testing. this Library is based
on [Playwright](https://playwright.dev/). All Integration Tests and data can be found in the directory 'integration-testing'.
Output can be found in the directory 'target' is below commands and Github Actions are used.

Some useful links:
- [Robot Framework](https://robotframework.org/)
- [Robot Framework User Guid](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [Robot Framework BuildIn Keywords](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)
- [Browser Library](https://github.com/MarketSquare/robotframework-browser)
- [Browser Library Keywords](https://marketsquare.github.io/robotframework-browser/Browser.html)
- [Playwright](https://playwright.dev/)
- [Playwright Documentation](https://playwright.dev/docs/intro/)

Some useful commands to execute the Robot Framework locally.  
Please follow the instructions of [Robot Framework](https://robotframework.org/) to install the Framework.  
And also follow the instruction of [Browser Library](https://github.com/MarketSquare/robotframework-browser) to install this needed library.

```
# Prefer to remove the target directory before starting.
rm -r target

# Normal run of all the test suites (with firefox, headless).
robot -d target/firefox integration-testing/

# Run of all the test suites (with firefox in presenter mode to better follow what happens).
robot -d target/firefox -v browser:firefox -v enable_presenter_mode:true -v headless:false integration-testing/

# Run of all the test suites (with chromium, headless), looks like chromium now only works headless. It crashs otherwise.
robot -d target/chromium -v browser:chromium integration-testing/
```
