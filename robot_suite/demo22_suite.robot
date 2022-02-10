*** Settings ***
Library  Collections


*** Variables ***
${MY_Name}   Jenshad
@{COLORS}     Blue    Red    Black      Green
&{EMPLOYEE1}   empid=101   empname=anu   age=23



*** Test Cases ***
TC1
   Log To Console      ${EXECDIR}
   Log To Console      ${TEST_NAME}
   Log To Console      ${TEMPDIR}
   Log To Console      ${CURDIR}
   Log To Console      ${SUITE_NAME}
   Log To Console      ${COLORS}
   Log To Console      ${COLORS}[1]

TC2

   FOR     ${i}    IN RANGE   0   4   2
       Log To Console   ${i}
   END


TC3
    Get Length  ${COLORS}
       Log To Console   ${COLORS}

TC4

    ${count}   Get Length     ${COLORS}
     Log To Console      ${count}

    FOR  ${i}    IN RANGE    0    ${count}
        Log TO Console      ${COLORS}[${i}]
    END

TC5
  FOR    ${color}    IN    @{COLORS}
     Log To Console   ${color}
  END

TC6
   Log To Console     ${EMPLOYEE1}
   Log To Console     ${EMPLOYEE1}[empname]
   Log To Console      The employee age is  ${EMPLOYEE1}[age]
   Log Dictionary     ${EMPLOYEE1}
   Log List       ${Colors}
