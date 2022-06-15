*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
I am open browser and then go to google
    Open Browser                    https://www.google.com/             Chrome
    Maximize Browser Window
    Element Should Be Visible           //*[@class="lnXdpd"]
    Close Browser