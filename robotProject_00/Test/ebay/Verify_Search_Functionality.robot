*** Settings ***
Documentation  Verify Search Functionality
Resource  ../Resources/CommonFunctionality.robot
Resource  ../Resources/eBay_UserDefinedKeywords.robot
Resource  ../Resources/PageObjects/SearchResultsPage.robot
Resource  ../Resources/PageObjects/HeaderPage.robot

Test Setup  CommonFunctionality.Start TestCase

Test Teardown  CommonFunctionality.Finish TestCase


*** Variables ***
&{search_text_dict}  search_books=books  search_travel=travel  search_robot=robot  search_PC=PC
&{search_buttons_text}  search_button_motors=Motors  search_button_fashion=Fashion

*** Test Cases ***
Verify Search Funcionality for ebay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional  Prio1

    HeaderPage.Input Search Text and Click Search  ${search_text_dict.search_travel}
    SearchResultsPage.Verify Search Results  ${search_text_dict.search_travel}

Verify Search Funcionality for ebay2
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional  Prio2

    HeaderPage.Input Search Text and Click Search  ${search_text_dict.search_books}
    SearchResultsPage.Verify Search Results  ${search_text_dict.search_books}


Verify Advanced Search Functionality
    [Documentation]  This test verifies the advanced search
    [Tags]  Functional

    HeaderPage.Click on Advanced Search Link

Verify Motors Link
    [Documentation]  This test vefies the Motors button link
    [Tags]  Prio3

    HeaderPage.Click on Motors
    SearchResultsPage.Verify Search Results for Button Motors    ${search_buttons_text.search_button_motors}
