*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Variables ***

*** Keywords ***
    # Set Selenium Speed    10s

*** Test Cases ***
bay success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_bay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    2000
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    # Wait Until Page Contains    เลือกประเภทผู้ใช้งาน
    # Sleep    3
    # # Execute JavaScript    window.scrollTo(0, 800)  
    # Input Text    xpath://*[@id="txtid"]    demo01 
    # Input Text    xpath://*[@id="txtpass"]    1234
    # Click Element    xpath://*[@id="submitInfo"]
    # Wait Until Page Contains    เลือกบัญชีในการชำระเงิน
    # Click Element    xpath://*[@id="submitInfo"]
    # Wait Until Page Contains    ข้อมูลการชำระเงิน
    # Input Text   xpath://*[@id="txtotp"]    123456
    # Click Element    xpath://*[@id="submitInfo"]
    # Wait Until Page Contains   ทำรายการสำเร็จ
    # Click Element    xpath://*[@id="submitInfo"]
    # Sleep    5
