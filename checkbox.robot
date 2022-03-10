*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}           ${MYBROWSERS}     
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/checkbox
${MYBROWSERS}           chrome

***Test Cases***
I want to check the box on Classified folder
    Maximize Browser Window
    Click Element                   //button[@title="Expand all"]
    Click Element                   (//span[@class="rct-checkbox"])[3]
    Sleep                           2s
    Element Should Be Visible       //div[@id="result"]
    Element Should Contain          //span[@class="text-success"]           notes