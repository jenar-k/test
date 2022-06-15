*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown   Close Browser

*** Variables ***
${webURL}       https://demoqa.com/radio-button
${BROWSERS}     Chrome

*** Test Cases ***
I clicked radio button impressive
    Maximize Browser Window
    Click Element                       //*[@for="impressiveRadio"]
    Wait Until Page Contains Element    //*[@class="text-success"]