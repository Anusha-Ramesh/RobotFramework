*** Settings ***
Documentation  this contain the keyboard activity sample

Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Set Window Size    700    700
    Go To    url=http://google.com/
    Press Keys      xpath=//input[@name='q']       Harshad
    Press Keys      None        ARROW_DOWN
    Press Keys      None        ARROW_DOWN
    Press Keys      None        RETURN

