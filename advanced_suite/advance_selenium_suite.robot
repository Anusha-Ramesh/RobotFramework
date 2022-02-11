*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
      Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://google.com
    ${linkcount}   Get Element Count    tag=a
    Log To Console    ${linkcount}

    @{elements}        Get WebElements    tag=a

     FOR    ${i}    IN RANGE    ${linkcount}
     Log To Console   ${elements}[${i}]
     END

