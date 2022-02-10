*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    
    Go To  url=https://demo.openemr.io/b/openemr/index.php 
    
    Input Text    id=authUser    admin
    
    Input Password    id=clearPass    pass

    Reload Page

    Select From List By Label    name=languageChoice     English (Indian)
    
    
    
TC2
        
    Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    
    Go To  url=https://demo.openemr.io/b/openemr/index.php 
    
    Input Text    id=authUser    admin

    Reload Page
    
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice     English (Indian)
    ${appdesc}   Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${appdesc}
    
TC3

    Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    
    Go To  url=https://demo.openemr.io/b/openemr/index.php 
    
    Input Text    id=authUser    admin

    Reload Page
    
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice     English (Indian)
    ${appdesc}   Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${appdesc}

     ${appdescc}    Get Text    link=Acknowledgments, Licensing and Certification
     Log To Console     ${appdescc}
    
    ${selectdropdownlabel}     Get Selected List Label    name=languageChoice
    Log To Console    ${selectdropdownlabel}


