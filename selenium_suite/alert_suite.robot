*** Settings ***
Library    SeleniumLibrary
Library     Collections

*** Comments ***
1.navigate through url
2.click on go
3.get the text from alert box
4.click on ok in alert box
5.close the browser


*** Test Cases ***
TC1
       Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To       url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element  xpath=//img[@alt='Go']
    ${alert_text}  Handle Alert  action=Accept  timeout=20s
    Log To Console  ${alert_text}
    Close Browser


