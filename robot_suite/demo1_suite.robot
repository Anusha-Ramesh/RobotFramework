*** Settings ***
Library  DateTime

*** Test Cases ***
TC1 Print Name
   Log To Console   hello,everyone
   Log To Console    welcome

TC2 Print Date
   ${date}      Get Current Date
   Log To Console   ${date}

TC3 Store Data
     Set Local variable     ${name}    Anusha
     Log To Console  ${name}
     Log hello,${name}
     ${title}    Set Variable     robotframeworksession
     Log To Console ${title}

#store 2 number and add
TC4 Add Number
     Set Local Variable     ${num1}     10
     Set Local Variable     ${num2}     20

   ${res}        Evaluate   ${num1}+${num2}
     Log To Console   ${res}


TC5 Area of Circle
    Set Variable   ${ra}   2
    Set Variable   ${pi}   3.14

    ${a}    Evaluate  ${ra}*${ra}*3.14
    Log To Console    ${a}

 TC6
        Set Local Variable    ${browser}       chrome

         IF    '${browser}'=='chrome'
             Log To Console    yes!its chrome
         ELSE
             Log To Console    no!its not matching
         END

TC7
 FOR    ${i} IN RANGE    1    10    1
    Log To Console   ${i}
 END


