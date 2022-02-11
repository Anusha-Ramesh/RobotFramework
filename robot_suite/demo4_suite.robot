*** Settings ***

Library    String

*** Test Cases ***
TC1
    Set Local Variable   ${val1}    $13,400,000
     ${val2}  Set Variable    $800,000

    ${v1}      Remove String   ${val1}   $   ,
     ${v2}     Remove String    ${val2}   $   ,
     Log To Console    ${val1}
     Log To Console    ${val2}

     ${res}  Evaluate    ${v1}+${v2}
     Log To Console    {${res}}

TC2
   Set Local Variable   ${val1}    $13,400,000
     ${val2}  Set Variable    $800,000

    ${v1}      Remove String   ${val1}   $   ,
     ${v2}     Remove String    ${val2}   $   ,
     Log To Console    ${v1}
     Log To Console    ${v2}

     ${num1}  Convert To Integer    ${v1}
     ${num2}  Convert To Integer    ${v2}

     ${res}  Evaluate    ${v1}+${v2}
     Log To Console    {${res}}
     
TC3
    Set Local Variable    ${mail}     harsha@gmail.com
    
    @{list}    Split String    ${mail}     @
    Log To Console    ${list}[0]
    
    ${name}  Convert To Upper Case    ${list}[0]
    Log To Console    ${name}
    Should Be Equal    ${name}    HARSHA