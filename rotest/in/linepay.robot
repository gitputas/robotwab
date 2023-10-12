*** Settings ***
Library    Selenium2Library
# Library    XML
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

# *** Keywords ***
#     Set Selenium Speed    10s

*** Test Cases ***
linepay success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    epayment_linepay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    200
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    Click Element    xpath://*[@id="link_payment_demo01"]
    # Wait Until Page Contains    PAY NOW
    Sleep    3
    ${handle} =	Switch Window	NEW
    # Switch Window    MAIN
    Sleep    3
    # Switch Window    ${handle}
    # Sleep    3
    # Switch Window	NEW
    Click Button    xpath=//button[@type='button']
    Sleep    3
    # Switch Window    MAIN
    Close Window        
