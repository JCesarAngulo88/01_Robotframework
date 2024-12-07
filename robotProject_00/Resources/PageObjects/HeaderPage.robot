*** Settings ***
Library  SeleniumLibrary
Variables  ../webelements.py

*** Variables ***
#${GLOBAL_VARIABLE}  Julio #Global escalar variable
#${search_text}  Robot  #Escalar variable
#@{search_text_list}  books  travel  robot PC
#&{search_text_dict}  search_books=books  search_travel=travel  search_robot=robot  search_PC=PC
#${searchTextBox}  xpath://*[@id="gh-ac"]
#${searchButtton}  xpath://*[@id="gh-btn"]
#${advancedSearchLink}   xpath://*[@id="gh-as-a"]

*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${arg_search_text}
    #Input Text  xpath://*[@id="gh-ac"]  ${search_text}
    #Input Text  xpath://*[@id="gh-ac"]  ${search_text_list}[3]
    #Input Text  xpath://*[@id="gh-ac"]  ${search_text_dict.search_PC}
    Input Text  ${homepage_searchtextbox}  ${arg_search_text}
    Press Keys  ${homepage_searchbuttton}  Return
    Sleep  5s

Click on Advanced Search Link
    Click Element  ${homepage_advancedsearchlink}
    Sleep    5s

Search for another variable
    [Arguments]  ${arg_search_text}
    Input Text  xpath://*[@id="gh-ac"]  ${arg_search_text}

Click on Motors
    Click Link    link:Motors
    Sleep  5s


