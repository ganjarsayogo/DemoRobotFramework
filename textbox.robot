*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}           ${BROWSERS}     
Test Teardown           Close Browser

*** Variables ***
${webURL}               http://uitestingplayground.com/textinput
${BROWSERS}             chrome

***Test Cases***
I type my name in the field
    Maximize Browser Window
    Input Text              //input[@id="newButtonName"]        Ganjar
    Click Button            //button[@id="updatingButton"]      
    Sleep                   2s
    Element Text Should Be  //button[@id="updatingButton"]      Ganjar

I type Jenar in the field
    Maximize Browser Window
    Input Text              //input[@id="newButtonName"]        Jenar
    Click Button            //button[@id="updatingButton"]      
    Sleep                   2s
    Element Text Should Be  //button[@id="updatingButton"]      Jenar 

I type Andika in the field
    Maximize Browser Window
    Input Text              //input[@id="newButtonName"]        Andika
    Click Button            //button[@id="updatingButton"]      
    Sleep                   2s
    Element Text Should Be  //button[@id="updatingButton"]      Andika        