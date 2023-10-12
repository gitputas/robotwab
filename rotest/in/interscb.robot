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
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_scb
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    100
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    Log in to SCB Easy Net
    Sleep    3
    # Execute JavaScript    window.scrollTo(0, 800)  
    Input Text    xpath://*[@id="loginID"]    demo01  
    Input Text    xpath://*[@id="loginPassword"]   1234
    Click Element    xpath://*[@id="btnSubmit"]
    # Wait Until Page Contains    เลือกบัญชีในการชำระเงิน
    Sleep    3
    Click Element    xpath://*[@id="btnSubmit"] 
    Sleep    3
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    Click Element    xpath://*[@id="btnSubmit"]
    Input Text    //*[@id="info"]/div[3]/table/tbody/tr/td[2]/input    123456
    Click Element    xpath://*[@id="btnSubmit"]
    Click Element    xpath://*[@id="btnBack"]
    Sleep    3

