*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}           ${BROWSERS}     
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/radio-button
${BROWSERS}             chrome

***Test Cases***
I choose YES in radio button
    Maximize Browser Window
    Click Element           //label[@for="yesRadio"]
    Sleep                   2s
    Element Text Should Be  //span[@class="text-success"]          Yes

I choose IMPRESSIVE in radio button
    Maximize Browser Window
    Click Element           //label[@for="impressiveRadio"]
    Sleep                   2s
    Element Text Should Be  //span[@class="text-success"]          Impressive