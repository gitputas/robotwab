*** Settings ***
Library    Selenium2Library
Library    XML
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
# ckbank success
#     Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
#     Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
#     Select From List By Value    xpath://*[@id="ChannelID"]    installment_scb
#     Select From List By Value    xpath://*[@id="RouteNo"]    1
#     Input Text     xpath://*[@id="Amount"]    3000
#     Select From List By Value    xpath://*[@id="CreditMonth"]    6
#     Select From List By Value    xpath://*[@id="ShopID"]    02
#     # Select From List By Value    xpath://*[@id="Currency"]    764
#     Click Element    xpath://*[@id="btnSubmit"]
#     Wait Until Page Contains    Transaction Information
#     # Sleep    3
#     Input Text    xpath://*[@id="CFirst"]    4444 
#     Input Text    xpath://*[@id="CSecond"]    4444
#     Input Text    xpath://*[@id="CThird"]    4444
#     Input Text    xpath://*[@id="CFourth"]    4444
#     Select From List By Value    xpath://*[@id="Card_Expmonth"]    09
#     Select From List By Value    xpath://*[@id="Card_Expyear"]   2024
#     Input Text    xpath://*[@id="cvv"]    123    
#     Input Text    xpath://*[@id="Cust_Fname"]    null
#     Input Text    xpath://*[@id="Cust_Email"]        A@B.com
#     Sleep    3
#     Click Element    xpath://*[@id="payBtn"]
#     Wait Until Page Contains    Merchant Name
#     Execute JavaScript    window.scrollTo(0, 800)
#     Click Element    xpath://*[@id="btnConfirm"]
#     Sleep    2
#     Click Element    xpath://*[@id="btnBack"]
#     Close Window
    
# APIV2 inscb cancel
#     Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php   chrome
#     Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
#     Select From List By Value    xpath://*[@id="ChannelID"]    installment_scb
#     Select From List By Value    xpath://*[@id="RouteNo"]    1
#     Input Text     xpath://*[@id="Amount"]    3000
#     Select From List By Value    xpath://*[@id="CreditMonth"]    6
#     Select From List By Value    xpath://*[@id="ShopID"]    02
#     # Select From List By Value    xpath://*[@id="Currency"]    764
#     Click Element    xpath://*[@id="btnSubmit"]

postfrom cancel
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/form-payment.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    installment_scb
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    3000
    Select From List By Value    xpath://*[@id="CreditMonth"]    6
    Select From List By Value    xpath://*[@id="ShopID"]    02
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]

    