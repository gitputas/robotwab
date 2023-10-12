*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank
# Suite Teardown    Close All Browsers

*** Variables ***

*** Keywords ***
    Set Selenium Speed    10s

*** Test Cases ***
bay success
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M000001
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_bay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    2000
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    # Wait Until Page Contains    เลือกประเภทผู้ใช้งาน
    Sleep    3
    # Execute JavaScript    window.scrollTo(0, 800)  
    Input Text    xpath://*[@id="txtid"]    demo01 
    Input Text    xpath://*[@id="txtpass"]    1234
    Click Element    xpath://*[@id="submitInfo"]
    Wait Until Page Contains    เลือกบัญชีในการชำระเงิน
    Click Element    xpath://*[@id="submitInfo"]
    Wait Until Page Contains    ข้อมูลการชำระเงิน
    Input Text   xpath://*[@id="txtotp"]    123456
    Click Element    xpath://*[@id="submitInfo"]
    Wait Until Page Contains   ทำรายการสำเร็จ
    Click Element    xpath://*[@id="submitInfo"]
    Sleep    5


keywords fail
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   edge
    Select From List By Value    xpath://*[@id="MerchantCode"]    M033643
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_bay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    19
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains    2005
    Wait Until Page Contains    Payment minimum price 19.00 less than 20.00
keyword cancel
    Open Browser   https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php   chrome
    Select From List By Value    xpath://*[@id="MerchantCode"]    M033643
    Select From List By Value    xpath://*[@id="ChannelID"]    internetbank_bay
    Select From List By Value    xpath://*[@id="RouteNo"]    1
    Input Text     xpath://*[@id="Amount"]    4500
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    xpath://*[@id="btnSubmit"]
    Wait Until Page Contains   เลือกประเภทผู้ใช้งาน
    Click Element    xpath://*[@id="infoCancel"]
    Wait Until Page Contains    ท่านได้ยกเลิกการทำรายการนี้
    Click Element    xpath://html/body/div[2]/section/div/div/div/form/div/div/button
    Wait Until Page Contains    ทำรายการไม่สำเร็จ


