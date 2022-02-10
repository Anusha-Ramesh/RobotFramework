*** Settings ***
Library   Collections


*** Variables ***

&{PERSONAL_DETAILS}    firstname=Anu   Lastname=Sharma    Mobile=9800543000


*** Test Cases ***

TC1
   Log To Console    ${PERSONAL_DETAILS}
   Log To Console    ${PERSONAL_DETAILS}[firstname]
   Log To Console    ${PERSONAL_DETAILS}[Lastname]
   Log To Console    ${PERSONAL_DETAILS}[Mobile]
