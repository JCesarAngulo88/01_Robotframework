*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Verify Search Results
    #Steps
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  Return
    Sleep  3s
    Page Should Contain  results for mobile
    Sleep  1s

Filter results by condition
    Click Element  xpath:/html/body/div[6]/div[4]/div[1]/div[2]/div[2]/div[2]/div[2]/span[1]/button/span
    sleep  2s
    Click Element  xpath://*[@id="s0-61-0-13-8-4-1-0-5[1]-68[1]-23-content-menu"]/li[2]/a/span
    #Click Element  xpath://*[@id="s0-61-0-13-8-4-1-0-5[1]-68[1]-23-content-menu"]/li[3]/a/span
    #Wait Until Element Is Visible    xpath=//*[@id="nid-xn3-4"]/button/span  10
    #Mouse Over  //*[@id="w7"]/button/div
    Sleep  2s
    #Mouse Down  //*[@id="w7"]/div/ul/li[2]
    #Click Element  //*[@id="w7"]/div/ul/li[2]

Verify Filter Results
    Element Should Contain    //*[@id="s0-61-0-13-8-4-3-0-3-0-7[0]-0-2-0-2-0-1-2-list"]/li[1]/div/a/div    New

