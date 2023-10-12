*** Settings ***
Library    Selenium2Library
Library    XML
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
ckbank success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    installment_ktc_flexi
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    5000
    Select From List By Value    xpath://*[@id="CreditMonth"]    6
    Select From List By Value    xpath://*[@id="ShopID"]    02
    Select From List By Value    xpath://*[@id="CardType"]    creditcard
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    # Wait Until Page Contains    Krungsri Consumer
    Sleep    3
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    Sleep    3
    Input Text    xpath=//input[@id='cc-holder-name']    visa 
    Input Text    xpath=//input[@id='cc-number']    4444444444444444
    Input Text    xpath=//input[@id='cc-expire']    0924
    Input Text    xpath=//input[@id='cc-ccv']    123
    Click Element    xpath=//form[@id='form-payment']/fieldset/input
    Click Element    xpath=//form[@id='form-payment']/fieldset/input
    Click Element    xpath=/html/body/div/div/div/div/div[2]/div[8]/a
    Sleep    2
    Close Window