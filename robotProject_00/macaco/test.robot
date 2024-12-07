*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${fruta}    manzana
@{my_list}    Apple    Banana    Orange
&{my_dict}  fruit=Apple  veg=carrot


*** Test Cases ***
Check the logs
    Log  ${fruta}
    Log  ${my_list}[0]
    Log  ${my_dict.fruit}
