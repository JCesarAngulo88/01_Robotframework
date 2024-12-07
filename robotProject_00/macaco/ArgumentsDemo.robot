*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{users}  user1=Julio Cesar  user2=Paul Sainz


*** Test Cases ***
Print users test
    [Documentation]  This is just for test Arguments
    [Tags]  Prio1
    Get users info    ${users.user1}  ${users.user2}



*** Keywords ***
Get users info
    [Arguments]  ${user_info1}  ${user_info2}
    Log  ${user_info1}
    Log  ${user_info2}
