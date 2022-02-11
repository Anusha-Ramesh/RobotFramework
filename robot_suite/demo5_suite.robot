*** Settings ***


*** Test Cases ***

TC1

     Log To Console    ${EXECDIR}${/}demo.txt
    File Should Exist    ${EXECDIR}${/}demo.txt

    ${output}   Get Binary File    ${EXECDIR}${/}demo.txt
    Log To Console    ${output}
    Log     ${output}
TC2

    Copy File    ${EXECDIR}${/}demo.txt    ${EXECDIR}${/}demo_new.txt

TC3

    Remove File    ${EXECDIR}${/}demo_new.txt