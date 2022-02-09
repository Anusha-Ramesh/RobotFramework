*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1 Valid Login
        Append To Environment Variable   Path    ${EXECDIR}\\drivers
     Open Browser    url=https://opensource-demo.orangehrmlive.com/             browser=chrome
     Input Text    id=txtUsername    Admin
     Input Text    id=txtPassword    admin123
     Click Element    name=Submit
     ${url}   Get Location
     Log To Console    ${url}
     Click Element    link=My Info
     Click Element    link=Emergency Contacts
     Click Element    id=btnAddContact
     Input Text       id=emgcontacts_name    XYZ
     Input Text    id=emgcontacts_relationship    Mother
     Input Text    name=emgcontacts[homePhone]    082134567
     Input Text    name=emgcontacts[mobilePhone]    8976543210
     Click Element    id=btnSaveEContact

     Click Element   id=welcome
     Sleep    5s
     Click Element    link=Logout
     Close Browser

