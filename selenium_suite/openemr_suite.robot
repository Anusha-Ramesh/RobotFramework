*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login

             Append To Environment Variable    Path         ${EXECDIR}\\drivers
      Open Browser    url=https://opensource-demo.orangehrmlive.com/             browser=chrome\chromedriver
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Input Text    id=authUser    admin
      Input Text    id=clearPass     pass
      Select From List By Label     name=languageChoice    English (Indian)
      Click Element    xpath=//button[@type='submit']
      ${title}       Get Title
      Log To Console    ${title}
      Title Should Be    OpenEMR
      Close Browser


