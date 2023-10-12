*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
scb success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_ttb
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    200
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    Login
    # Input Text    xpath://*[@id="user"]    demo01  
    Input Text    xpath://*[@id="password"]  1234
    Click Element    xpath://*[@id="btnLogin"]
    # Wait Until Page Contains    เลือกบัญชีในการชำระเงิน
    Sleep    3
    Click Element    xpath://*[@id="btnNext"]
    Sleep    3
    Click Element    xpath://*[@id="btnConfirm"]
    Sleep    3
    Input Text     xpath://*[@id="otp"]    123456
    Click Element    xpath://*[@id="btnOtp"]
    Sleep    3
    Click Element    xpath://*[@id="btnReturn"]
    Sleep    3
    Close Window