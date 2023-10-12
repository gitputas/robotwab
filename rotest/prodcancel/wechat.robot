*** Settings ***
Library    Selenium2Library
Library    XML
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Variables ***

*** Keywords ***
    # Set Selenium Speed    10s

*** Test Cases ***
bay success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    epayment_wechatpay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    20
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    Chinese eWallet
    Click Element    xpath://*[@id="btnCancleQR"]
    # Sleep    3
    Wait Until Page Contains    Do you want to cancel ?
    Click Element    xpath://*[@id="btnConfirmCancel"]