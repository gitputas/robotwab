*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank 
# Suite Teardown    Close All Browsers

*** Test Cases ***
Gen QR success
    # FOR    ${i}    IN RANGE    20
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    bank_qrcode
    Select From List By Value    xpath://*[@id="RouteNo"]    8
    Input Text     xpath://*[@id="Amount"]    3500
    Select From List By Value    xpath://*[@id="Currency"]    764
    # Execute JavaScript    window.scrollTo(0, 800)
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    QR PAYMENT
    Click Element    xpath://*[@id="BtnSaveQR"]
    # Sleep    3
    # Close All Browsers 
    # END