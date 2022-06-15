*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown   Close Browser

*** Variables ***
${webURL}       https://demoqa.com/checkbox
${BROWSERS}     Chrome

*** Test Cases ***
I checked "Notes" Data
    Maximize Browser Window
    Click Element                       //*[@aria-label="Expand all"]
    Click Element                       (//*[@class="rct-title"])[3]
    Click Element                       (//*[@class="rct-title"])[7]
    Wait Until Page Contains Element    //*[@class="text-success"]
    Element Should Be Visible           //*[@class="text-success"]
    Element Text Should Be              //*[@class="text-success"]              notes
    Element Should Contain              //*[@class="text-success"]              notes