*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  ebay_page  #use the next command to run directly the web page specified: robot --include Prio1 -d Results -v env:ebay_page.\Test\ebay\Verify_Search_Functionality.robot
${browser}  chrome
&{url}  ebay_page=https://www.ebay.com  amazon_page=https://www.amazon.com

*** Keywords ***
Start TestCase
    #Preconditions
    Open Browser  ${url.${env}}  ${browser}
    Sleep  2s
    Maximize Browser Window
    Wait Until Element Is Visible    id:gh-eb-Geo    5s
    Click Element    id:gh-eb-Geo-a-default
    Wait Until Element Is Visible    id:gh-eb-Geo-a-en    5s
    Click Element    id:gh-eb-Geo-a-en
    Sleep  2s

Finish TestCase
    #PostConditions
    Close Browser
