*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
TC1
      Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Set Window Size   600   800
    Go To    url=https://google.com
    ${linkcount}   Get Element Count    tag=a
    Log To Console    ${linkcount}


TC2

    Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://google.com
    ${linkcount}   Get Element Count    tag=a
    Log To Console    ${linkcount}

     @{elements}        Get WebElements    tag=a

     FOR       ${i}    IN RANGE       0    ${linkcount}
        ${text}    Get Text    ${elements}[${i}]
        Log To Console    ${text}

        Run Keyword If   '${text}'=='About'    Click Element   ${elements}[${i}]
        Exit For Loop If     '${text}'=='About'
     END

# IF  '${text}'=='Images'
#         Click Element   ${elements}{${i}
#         Exit For Loop
# END


TC3

     Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
#    Set Window Size     800  800
     Go To    url=https://google.com
     ${width}  ${height}   Get Window Size
     Log To Console  ${width}
     Log To Console  ${height}

TC4
      Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in
    Mouse Over   xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()='Members Listing']

TC5

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







