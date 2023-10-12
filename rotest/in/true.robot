*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
true success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    epayment_truemoney
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    200
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    ยืนยันการชำระเงิน
    Input Text    xpath://*[@id="mobileNo"]   0008683501  
    Click Element    xpath://*[@id="btnRequestOTP"]
    # Wait Until Page Contains    กรุณาใส่รหัสเลข
    Sleep    3
    Input Text    xpath://*[@id="inputOTPText1"]    1
    Input Text    xpath://*[@id="inputOTPText2"]    1
    Input Text    xpath://*[@id="inputOTPText3"]    1
    Input Text    xpath://*[@id="inputOTPText4"]    1
    Input Text    xpath://*[@id="inputOTPText5"]    1
    Input Text    xpath://*[@id="inputOTPText6"]    1
    Click Element    xpath://*[@id="btnVerify"]
    Sleep    3
    Close Window