*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
ckbank success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    creditcard_kbank
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    5000
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Select From List By Value    xpath://*[@id="ShopID"]    02
    Select From List By Value    xpath://*[@id="CardType"]    unionpay
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    Payment Information
    Input Text    xpath://*[@id="CardNumberNo1"]    4444 
    Input Text    xpath://*[@id="CardNumberNo2"]    4444
    Input Text    xpath://*[@id="CardNumberNo3"]    4444
    Input Text    xpath://*[@id="CardNumberNo4"]    4444
    Input Text    xpath://*[@id="CVV"]    123
    Select From List By Value    xpath://*[@id="ExpiredDateMM"]    09
    Select From List By Value    xpath://*[@id="ExpiredDateYYYY"]   2022
    Input Text    xpath://*[@id="CardHolderName"]    b
    Select From List By Value    xpath://*[@id="CountryIssueBank"]    THA
    Select From List By Value    xpath://*[@id="IssueBank"]    Bangkok Bank Public Company Limited
    Click Element    xpath://*[@id="btnSubmit"]
    Click Element    xpath://*[@id="btnSubmit"]
    Sleep    3
    