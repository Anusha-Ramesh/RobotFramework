*** Settings ***
Library    SeleniumLibrary
Library     Collections

*** Comments ***
1. Navigate https://nasscom.in/nasscom-membership
2. Click radio button Institutional Members
3. Check Education and Training
4. Check Telecom Services
5. click Calculate Membership Fee
6. get the alert text and print in the console
7. handle the alert box
closes browser within seconds is given close browser with pass results

*** Test Cases ***
TC1
    
       Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-966
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    link=Calculate Membership Fee
    ${alert_text}  Handle Alert  action=Accept
    Log To Console  ${alert_text}

TC2
     Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://nasscom.in/nasscom-membership
    Select Radio Button    field_membership_type[und]    1203
    Select Checkbox    id=edit-field-business-focus-inst-und-966
    Select Checkbox    id=edit-field-business-focus-inst-und-970
    Click Element    link=Calculate Membership Fee
    ${alert_text}  Handle Alert  action=LEAVE
    Log To Console  ${alert_text}

    Alert Should Be Present    Please enter amount in digit and greater than zero.     action=ACCEPT

    Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload           file_path=C:\Users\Anusha\Desktop\RFP\robot_project\selenium_suite\BDA-SECOND-IA-QP -TT.pdf

    Sleep    5s

