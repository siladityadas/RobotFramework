*** Settings ***
Documentation  To check thrilophilla website is working fine
Library    SeleniumLibrary


*** Test Cases ***
Check if page is valid
    Launch Test URL


*** Keywords ***
Launch Test URL
    Create Webdriver    Chrome
    Go To    https://www.thrillophilia.com/




