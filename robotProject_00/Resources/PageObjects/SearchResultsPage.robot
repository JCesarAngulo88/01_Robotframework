*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}  results for
${search_button_text}  eBay

*** Keywords ***
Verify Search Results
    [Arguments]  ${arg_search_result}
    Log    ${arg_search_result}
    #Page Should Contain  ${search_result} ${search_text}
    #Page Should Contain  ${search_result}  ${search_text_list}[3]
    #Page Should Contain  ${search_result}  ${search_text_dict.search_PC}
    Page Should Contain  ${search_result} ${arg_search_result}

Verify Search Results for Button Motors
    [Arguments]  ${arg_search_button_motors}
    Log  ${arg_search_button_motors}
    Page Should Contain  ${search_button_text} ${arg_search_button_motors}

Select Product Condition
    Log  Select Product Condition

Select Shipping options
    Log  Select Shipping options
