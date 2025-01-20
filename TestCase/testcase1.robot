*** Settings ***
Documentation  To check thrilophilla website is working fine
Library    SeleniumLibrary


*** Test Cases ***
Check if page is valid
    Launch Test URL
    AUT is visible


*** Keywords ***
Launch Test URL
    Create Webdriver    Chrome
    Go To    https://www.thrillophilia.com/
AUT is visible
    Wait Until Element Is Visible  //div[@class ='StickyTabBar_tagLabel__SYuPT ']  ${10}
    ${Data} =  Get WebElements  //div[@class ='StickyTabBar_tagLabel__SYuPT ']
    log  ${Data}
    FOR    ${itr}  IN    @{Data}
    ${val}  Get Text    ${itr}
    Log    ${val}
    END




