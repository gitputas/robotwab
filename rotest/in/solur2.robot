*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
true success 15
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    creditcard_paysolutions
    Select From List By Value    xpath://*[@id="RouteNo"]    16
    Input Text     xpath://*[@id="Amount"]    3500
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    ชำระด้วย
    Click Element    xpath://*[@id="2"]
    Input Text    xpath://*[@id="creditcard"]   4444444444444444
    Input Text    xpath://*[@id="exp"]    0922  
    Input Text    xpath://*[@id="cvv"]    123
    Input Text    xpath://*[@id="cardholder"]    free
    Click Element    xpath://*[@id="pdpa"]
    Click Element    xpath://*[@id="submit-creditcard"]
    # Wait Until Page Contains    กรุณาใส่รหัสเลข
    Sleep    3
