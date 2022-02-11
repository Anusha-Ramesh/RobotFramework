*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login

       Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://demo.openemr.io/b/openemr/index.php
      Input Text    id=authUser    admin
      Input Text    id=clearPass     pass
      Select From List By Label     name=languageChoice    English (Indian)
      Click Element    xpath=//button[@type='submit']
      ${title}       Get Title
      Log To Console    ${title}
      Title Should Be    OpenEMR
      Close Browser

TC2

#mouse over option used to log out



 Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://demo.openemr.io/b/openemr/index.php
    Input Text    id=authUser    admin
    Input Text    id=clearPass     pass
    Select From List By Label     name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}       Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Mouse Over  xpath=//span[@data-bind='text:fname']
    Click Element    xpath=//li[text()='Logout']
    Close Browser