*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Multitabs login

        Open Browser  url= https://www.db4free.net/     browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    xpath=//b[contains(text(),'php']
    Switch Window     phpMyAdmin
    Input Text    id=input_username      abxc
    Input Text    id=input_password      test123
    Click Element    id=input_go
    Switch Window   db4free.net - MySQL Database for free
    Click Element     link=Donations
    Input Text       id=form_amount     -90
    Select From List By Label    name=currency_code      JPY
    Click Element    name=submit

