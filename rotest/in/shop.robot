*** Settings ***
Library    Selenium2Library
Library    Dialogs
Library    Collections 
# Test Teardown     Go To   about:blank 
# Suite Teardown    Close All Browsers

*** Keywords ***

*** Test Cases ***
True success
    # Set Selenium Speed    80ms
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    epayment_shopeepay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    3500.00
    Select From List By Value    xpath://*[@id="Currency"]    764
    # Execute JavaScript    window.scrollTo(0, 800)
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    ${ver}=    Get Text    xpath=/html/body/div/div/div/div/div/div[2]/div/div[1]/div/div/div/div[1]/p[2]/span
    Set Global Variable    ${ver}
    # Set Local Variable    ${ver} = `Set Variable`    value
    Log To Console    ${ver}
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/confirm-transaction.php   chrome
    Select From List By Value    xpath://*[@id="ChannelID"]    QRCODE
    Input Text    xpath://*[@id="OrderNo"]    ${ver}
    Input Text     xpath://*[@id="Amount"]   3500.00
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    # Close Window