*** Settings ***
Library         SeleniumLibrary
Test Setup      Open Browser        ${webURL}       ${BROWSERS}
Test Teardown   Close Browser

*** Variables ***
${webURL}       https://www.google.com/
${BROWSERS}     Chrome

*** Test Cases ***
I am open browser and then go to google
    Maximize Browser Window
    Element Should Be Visible           //*[@class="lnXdpd"]