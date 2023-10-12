*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank 
# Suite Teardown    Close All Browsers

*** Keywords ***

*** Variables ***
@{MY_VARIABLE} =     Hello there This is va

*** Test Cases ***
Gen QR success
    # Set Selenium Speed    80ms
    # FOR    ${i}    IN RANGE    10
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    bank_qrcode
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    3500.00
    Select From List By Value    xpath://*[@id="Currency"]    764
    # Execute JavaScript    window.scrollTo(0, 800)
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    QR PAYMENT
    Click Element    xpath://*[@id="BtnSaveQR"]
    Sleep    3
    # Close All Browsers 
    # END 
    ${ver}=    Get Value    xpath://*[@id="TnxId"]
    Set Global Variable    ${ver}
    # Set Local Variable    ${var} = `Set Variable`    value
    Log To Console    ${ver}
    # Go To    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/confirm-transaction.php   
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/confirm-transaction.php   chrome
    Select From List By Value    xpath://*[@id="ChannelID"]    QRCODE
    Input Text    xpath://*[@id="OrderNo"]    ${ver}
    Input Text     xpath://*[@id="Amount"]   3505.00
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    # Switch Browser    NEW
    Close Window
    