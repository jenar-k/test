*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown   Close Browser

*** Variables ***
${webURL}       http://uitestingplayground.com/textinput
${BROWSERS}     Chrome

*** Test Cases ***
I filled all the fields in this form
    Maximize Browser Window
    Input Text              //input[@id="newButtonName"]                    Jenar
    Click Element           //button[@id="updatingButton"]
    Element Should Contain  //button[@id="updatingButton"]                  Jenar
