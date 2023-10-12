*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    # Set Selenium Speed    10s

*** Test Cases ***
bbl success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/sandbox/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_bbl
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    2000
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    Payee Name: ChillPay  
    Input Text    xpath://*[@id="txtID"]    demo01
    Input Text    xpath://*[@id="txtPwd"]   1234  
    Click Element    xpath://*[@id="btnLogOn"]
    Wait Until Page Contains    บริการชำระค่าสินค้าและบริการ
    Select From List By Value    xpath://*[@id="ddlPayFrom"]    1
    # Click Element    xpath://*[@id="btnNext"]
    Input Text     xpath://*[@id="otpPassword"]   123456
    Click Element    xpath://*[@id="btnVerConfirm"]
    Click Element    xpath://*[@id="btnConBackToPayeeSite"]
    Sleep    3
