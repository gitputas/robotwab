*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
KTB success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/sandbox/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_ktb
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    3000
    # Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    ข้อมูลการชำระเงิน
    Click Element    xpath://*[@id="netbanklogin"]
    Sleep    3   
    Input Text    xpath://*[@id="txtUsername"]    demo01
    # Execute JavaScript    window.scrollTo(0, 800)  
    Input Text    xpath://*[@id="txtPassword"]  1234
    Click Element    xpath://*[@id="login_btn"]
    Click Element    xpath://*[@id="pay"]
    Click Element    xpath://*[@id="aTOP"]
    Wait Until Page Contains    กรุณาใส่
    Input Text    xpath://*[@id="topPassword"]    123456
    Click Element    //*[@id="confirmtop"]
    Click Element    xpath://*[@id="mainContentPanel"]/div[4]/div/div/a
    Sleep    3