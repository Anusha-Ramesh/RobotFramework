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
   FOR     ${i}    IN RANGE   1   2    1
       Log    ${1}
   END
TC3

   For  ${blue}   IN  @{COLORS}
       Continue For Loop If  $blue == '0'
   Log ${blue}
   END