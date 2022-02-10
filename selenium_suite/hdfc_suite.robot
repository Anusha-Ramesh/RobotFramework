*** Settings ***
Library    SeleniumLibrary
Library     Collections


*** Comments ***
Some files contain frame so we need to get into the frame and then follow next step
Here, to get our text, we need to get into frame, get xpath of frame
then enter our text later switch to main html


*** Test Cases ***
TC1

       Open Browser       browser=chrome      executable_path=${EXECDIR}\\drivers\\chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait   20s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    Abc123

    Comment  Click on continue
    Click Element    link=CONTINUE

    Comment    switch to main html
    Unselect Frame
