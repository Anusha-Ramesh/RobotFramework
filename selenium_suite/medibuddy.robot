*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Login Valid

    Open Browser  url=https://www.medibuddy.in/      browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    ABC
    Input Text    id=email    abc1@gmail.com
    Input Text    id=companyName    Google
    Input Text    id=mobileNumber    0987654321
    Input Text    id=address    USA
    Input Text    id=pincode    042133
    Input Text    id= websiteUrl   www.google.com
    Input Text    id=empCount    50
    Click Element   xpath=//input[@value='Next']
    Close Window

