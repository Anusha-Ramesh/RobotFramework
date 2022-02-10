*** Variables ***
${MY_Name}   Jenshad
@{COLORS}     Blue Red Black Green

*** Test Cases ***
TC1
   Log To Console      ${EXECDIR}
   Log To Console      ${TEST_NAME}
   Log To Console      ${TEMPDIR}
   Log To Console      ${CURDIR}
   Log To Console      ${SUITE_NAME}

TC2
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[2]
   FOR     ${red}    IN    @{COLORS}
       Log    ${red}
   END
