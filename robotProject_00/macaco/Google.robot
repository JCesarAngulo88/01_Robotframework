*** Settings ***
Library    SeleniumLibrary

*** variables ***

*** Test Cases ***
Hello Robot Framework
    [Documentation]  Google Test
    [Tags]  regression
    Log To Console    This is a message for the console
    Log    This is a Message for the log
    Open Browser  http://www.google.com.mx  chrome
    Sleep  5s
    Close Browser

*** Keywords ***
