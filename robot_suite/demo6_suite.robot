*** Settings ***


Library    ../python_code/calculator.py
*** Test Cases ***
TC1
    ${a}   Add    10    20
     Log To Console    ${a}

      ${b}   Sub    10    20
     Log To Console    ${b}