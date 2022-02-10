*** Settings ***
Library    Collections

*** Comments ***
working with  local variable scalar, list, dic

*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       Jennifer
    ${lastname}     Set Variable    Chopda
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    mango  apple    orange     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   9753

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary     firstname=Jennifer       lastname=Chopda        mobile=09986544
    Log To Console    ${dic}[lastname]