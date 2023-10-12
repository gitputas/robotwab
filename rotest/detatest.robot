*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Page Should Contain Element
    [Arguments]    ${locator}
    Wait Until Page Contains Element    ${locator}    timeout=10s
    Element Should Be Visible    ${locator}

Page Should Contain
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    timeout=10s

*** Test Cases ***
Login Success
    [Documentation]    To verify that a user can login successfully with correct credentials.
    Open Browser    http://the-internet.herokuapp.com/login    Chrome
    Input Text    id=username    tomsmith
    Input Text    id=password    SuperSecretPassword!
    Click Button    xpath=//button[@type='submit']
    Page Should Contain Element    xpath=//h2[contains(text(), 'Secure Area')]
    Page Should Contain    You logged into a secure area!
    Click Link    //*[@id="content"]/div/a
    Page Should Contain Element    xpath=//h2[contains(text(), 'Login')]
    Page Should Contain    You logged out of the secure area!

Login Failed - Password Incorrect
    [Documentation]    To verify that a user cannot login with correct username but wrong password.
    Open Browser    http://the-internet.herokuapp.com/login    Chrome
    Input Text    id=username    tomsmith
    Input Text    id=password    Password!
    Click Button    xpath=//button[@type='submit']
    Page Should Contain Element    xpath=//h2[contains(text(), 'Login')]
    Page Should Contain    Your password is invalid!

Login Failed - Username Not Found
    [Documentation]    To verify that a user cannot login with a username that does not exist.
    Open Browser    http://the-internet.herokuapp.com/login    Chrome
    Input Text    id=username    tomholland
    Input Text    id=password    Password!
    Click Button    xpath=//button[@type='submit']
    Page Should Contain Element    xpath=//h2[contains(text(), 'Login')]
    Page Should Contain    Your username is invalid!

