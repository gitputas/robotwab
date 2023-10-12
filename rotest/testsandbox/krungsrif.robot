*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
ckbank success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/sandbox/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    installment_firstchoice
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    5000
    Select From List By Value    xpath://*[@id="CreditMonth"]    6
    Select From List By Value    xpath://*[@id="ShopID"]    02
    Select From List By Value    xpath://*[@id="CardType"]    loancard
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    # Wait Until Page Contains    Krungsri Consumer
    Sleep    3
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    # Wait Until Page Contains    Payment Information
    Sleep    2
    Input Text    xpath=(//input[@id='cc1'])[2]    1111 
    Input Text    xpath=(//input[@id='cc2'])[2]    1111
    Input Text    xpath=(//input[@id='cc3'])[2]    1111
    Input Text    xpath=(//input[@id='cc4'])[2]    1111
    Input Text    xpath=(//input[@id='holder'])[2]    ss
    Click Element    xpath=(//button[@type='submit'])[2]
    Sleep    3
    Input Text    xpath=(//input[@id='cc1'])[2]    1111 
    Input Text    xpath=(//input[@id='cc2'])[2]    1111
    Input Text    xpath=(//input[@id='cc3'])[2]    1111
    Input Text    xpath=(//input[@id='cc4'])[2]    1111
    Input Text    xpath=//div[@id='cvv-group']/input    123   
    Select From List By Value    xpath=//select[@id='expiryMonth']    9
    Select From List By Value    xpath=(//select[@id='expiryYear'])[2]   2024 
    Input Text    xpath=(//input[@id='holder'])[2]    ss
    Click Element    xpath=(//button[@type='submit'])[2]
    Sleep    2
    Click Element    xpath=//input[@name='accept']
    Click Element    xpath=//button[@id='btnacceptpc']
    Sleep    2
    Input Text    xpath=(//input[@id='otpcode'])[2]    123456
    Click Element    xpath=(//button[@id='accept-btn'])[2]
    Click Element    xpath=(//a[contains(text(),'Back to Merchant')])[2]
    Sleep    2

    