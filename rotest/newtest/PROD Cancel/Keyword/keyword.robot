*** Settings ***
Resource    ../Setting/setting.robot
Resource    ../Variable/variable.robot


*** Keywords ***
# Open sit url
opensitapi
    [Arguments]          ${sitapi}                  ${browser}          
    Open Browser         ${sitapi}                  ${browser}
    ...    options = Options()
    # ...    options.add_experimental_option('detach', True)
    Log To Console    ${\n} ${\n} Open URL : ${sitapi}
opensitpostfrom  
    [Arguments]          ${sitpostfrom}                  ${browser}          
    Open Browser         ${sitpostfrom}                  ${browser}
    Wait Until Page Contains     Merchant Code
    Log To Console    ${\n} ${\n} Open URL : ${sitpostfrom}
opensitcode
    [Arguments]          ${sitcode}                  ${browser}          
    Open Browser         ${sitcode}                  ${browser}
    Wait Until Page Contains     Merchant Code
    Log To Console    ${\n} ${\n} Open URL : ${sitcode}
opensitpaylink

opensit woo

# OpenProd URL
openprod v2
    [Arguments]    ${prodv2}    ${browser}
    Open Browser    ${prodv2}    ${browser}
    Wait Until Page Contains    Merchant Code
    Log To Console    ${\n} ${\n} Open URL : ${prodv2}
open beta
    [Arguments]    ${beta}    ${browser}
    Open Browser    ${beta}    ${browser}
    Wait Until Page Contains    Merchant Code
    Log To Console    ${\n} ${\n} Open URL : ${prodv2}
openprod post

# internetbanking
internetbay Fail
    [Arguments]          ${merchantbox}    ${merchantM9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetbay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount10}
    Click Element    ${paymentbutton}
    # Wait Until Page Contains    2005
    # Wait Until Page Contains    Payment minimum price 19.00 less than 20.00
    Log To Console    ${\n} ${\n} Open URL : ${prodv2}

internetbay cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetbay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Select From List By Value    xpath://*[@id="Currency"]    764
    Click Element    ${paymentbutton}
    Wait Until Page Contains   เลือกประเภทผู้ใช้งาน 
    Click Element    ${cancelbotton}
    Wait Until Page Contains    ท่านได้ยกเลิกการทำรายการนี้
    Click Element    ${backbay} 
    Wait Until Page Contains    ทำรายการไม่สำเร็จ
internetscb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetscb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    # Wait Until Page Contains    Log in to SCB Easy Net
    # Sleep    3
    # Input Text    ${loginscb}   ${loginscbdata}  
    # Input Text    xpath://*[@id="loginPassword"]   1234
    # Click Element    xpath://*[@id="btnSubmit"]
    Click Element    ${scblink}
internetbbl cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetbbl}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
internetktb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetktb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
internetttb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalinternetttb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${ttbbotton}    10
    Click Element    ${ttbbotton}
kplus cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalkplus}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
SCB Easy App cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelmobilescb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${BtnCancel}
    Click Element    ${BtnCancel}
    Wait Until Element Is Visible    ${btnyes}
    Click Element    ${btnyes} 
mobilebbl cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelmobilebbl}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${BtnCancel}
    Click Element    ${BtnCancel}
    Wait Until Element Is Visible    ${btnyes}
    Click Element    ${btnyes} 
kma cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelkma}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${BtnCancel}
    Click Element    ${BtnCancel}
    Wait Until Element Is Visible    ${btnyes}
    Click Element    ${btnyes} 
qrscb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrbbl cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrktb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata3}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrktb cancel beta
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata8}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrcimb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata4}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrcimb cancel beta
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata7}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
qrcimb tax30 cancel beta
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata12}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
linepay cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channellinepay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
linepay cancel route2
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channellinepay}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
truemoney cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channaltruemoney}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${BottonCancel}
    Click Element    ${BottonCancel}
    Wait Until Element Is Visible    ${btnCancelConfirm}
    Click Element    ${btnCancelConfirm}
ShopeePayR1 cancel
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalshoopeepay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
ShopeePayR2 cancel
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalshoopeepay}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
ShopeePayR3 cancel
    [Arguments]          ${merchantbox}    ${merchantM1}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channalshoopeepay}
    Select From List By Value    ${routebox}    ${routedata3}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
alipay cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalalipay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${btnCancleQR}
    Click Element    ${btnCancleQR}
    Wait Until Element Is Visible    ${btnConfirmCancel}
    Click Element    ${btnConfirmCancel} 
wechat cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalwechat}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${btnCancleQR}
    Click Element    ${btnCancleQR}
    Wait Until Element Is Visible    ${btnConfirmCancel}
    Click Element    ${btnConfirmCancel} 
cckbanknewui cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelcckbank}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    # Wait Until Element Is Visible    ${closebuttton}
    # Click Element    ${closebuttton}

cckbankunionpay cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelcckbank}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Select From List By Value    ${shopid}    02
    Select From List By Value    ${cardType}    unionpay
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
paysolution12 cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelpaysolutions}
    Select From List By Value    ${routebox}    ${routedata12}
    Input Text    ${amountbox}    ${amountdata}
    # Select From List By Value    ${shopid}    02
    # Select From List By Value    ${cardType}    unionpay
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${psbody}
    Click Element    ${psbody}
    Wait Until Element Is Visible    ${modalConfirmBtnYes}
    Click Element    ${modalConfirmBtnYes}
paysolution13 cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelpaysolutions}
    Select From List By Value    ${routebox}    ${routedata13}
    Input Text    ${amountbox}    ${amountdata}
    # Select From List By Value    ${shopid}    02
    # Select From List By Value    ${cardType}    unionpay
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${psbody}
    Click Element    ${psbody}
    Wait Until Element Is Visible    ${modalConfirmBtnYes}
    Click Element    ${modalConfirmBtnYes}
installmentkbank cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelinstallment_kbank}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amount3000}
    Select From List By Value    ${CreditMonth}    6
    Select From List By Value    ${shopid}    02
    # Select From List By Value    ${cardType}    unionpay
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
installmentscb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelinstallment_scb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount3000}
    Select From List By Value    ${CreditMonth}    6
    Select From List By Value    ${shopid}    02
    # Select From List By Value    ${cardType}    unionpay
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${button}
    Click Element    ${button}
installmentkrungsri cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelinstallment_krungsri}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount3000}
    Select From List By Value    ${CreditMonth}    6
    Select From List By Value    ${shopid}    02
    Select From List By Value    ${cardType}    creditcard
    Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    xpath=//label/span
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    # Wait Until Page Contains    xpath://*[@id="form-payment"]/fieldset/div[6]
    Sleep    3
    Click Element    xpath://*[@id="form-payment"]/fieldset/div[6]
installment_firstchoice cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelfirstchoice}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount3000}
    Select From List By Value    ${CreditMonth}    6
    Select From List By Value    ${shopid}    02
    Select From List By Value    ${cardType}    loancard
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    xpath=//label/span
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    Sleep    3
    Click Element    xpath://*[@id="form-payment"]/fieldset/div[6]
ktcfiexi cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelktcflexi}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount3000}
    Select From List By Value    ${CreditMonth}    6
    Select From List By Value    ${shopid}    02
    Select From List By Value    ${cardType}    creditcard
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    xpath=//label/span
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    Sleep    3
    Click Element    xpath://*[@id="form-payment"]/fieldset/div[6]
ktcforever cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalktcforever}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amount3000}
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    xpath=//label/span
    Click Element    xpath=//label/span
    Click Element    xpath=//button[@id='button-KTC']/span
    Sleep    3
    Click Element    xpath://*[@id="form-payment"]/fieldset/div[5]/a
counterbill cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channalcounterbill}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${btnBack}
    Click Element    ${btnBack}
cenpay cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelcenpay}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${btnBack}
    Click Element    ${btnBack}
boonterm cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchant9}
    Select From List By Value    ${channalbox}    ${channelboonterm}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${btnBack}
    Click Element    ${btnBack}
oddscb cancel
    [Arguments]          ${merchantbox}    ${merchant9}       
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${channalbox}    ${channeloddscb}
    Select From List By Value    ${routebox}    ${routedata1}
    Input Text    ${amountbox}    ${amountdata}
    Input Text    ${oddaccountbox}    ${oddaccountscb}
    # Select From List By Value    xpath://*[@id="CreditMonth"]    3
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${mobilenobox}
    Input Text    ${mobilenobox}    ${mobileno}
    Click Element    ${paymentbutton}

# QR Code
open sit cimb new
    [Arguments]          ${merchantbox}    ${merchantMe}       
    Select From List By Value    ${merchantbox}    ${merchantMe}
    Select From List By Value    ${channalbox}    ${channalqr}
    Select From List By Value    ${routebox}    ${routedata14}
    Input Text    ${amountbox}    ${amount500}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
    Wait Until Page Contains    QR PAYMENT
    Click Element    ${btnsave}
get value qr
    [Arguments]    ${qrsuccess}   ${browser}
    Wait Until Element Is Visible    BtnSaveQR    10
    ${ver}=    Get Value    ${gettnx}
    Set Global Variable    ${ver}
    # Wait Until Element Is Visible    ${browser}    10 
    Open Browser   ${qrsuccess}   ${browser}
    Select From List By Value    ${channalbox}    QRCODE
    Input Text    xpath://*[@id="OrderNo"]    ${ver}
    Input Text     xpath://*[@id="Amount"]   ${amountdata}
    # Click Element    xpath://*[@id="btnSubmit"]
    # Sleep    3
    # Close Window
demo qrcode codetemplate
    [Arguments]          ${merchantbox}    ${merchantme}   
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${routebox}    ${routedata14}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
demo codetemplate qr
    [Arguments]    ${clickqr}    ${clickqrto}
    Wait Until Element Is Visible    ${clickqr}    10
    Click Element    ${clickqr}
    Wait Until Element Is Visible    ${clickqr}    10
    Click Element    ${clickqrto}
    Wait Until Element Is Visible    ${clickqr}    10
    Click Element    ${button make Demo}
# Demo sit Alipay

demo alipaycode
    [Arguments]          ${merchantbox}    ${merchantme}        
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
demo wechatcode M000001
    [Arguments]          ${merchantbox}    ${merchantM1}        
    Select From List By Value    ${merchantbox}    ${merchantM1}
    Select From List By Value    ${routebox}    ${routedata5}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}

# codetemplate wechat
demo wechatcode 
    [Arguments]          ${merchantbox}    ${merchantme}        
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
demo codetemplate
    [Arguments]    ${clickwechat}    ${clickwechatto}
    Wait Until Element Is Visible    ${clickwechat}    10
    Click Element    ${clickwechat}
    Wait Until Element Is Visible    ${clickwechat}    10
    Click Element    ${clickwechatto}
    Wait Until Element Is Visible    ${clickwechat}    10
    Click Element    ${button make Demo}
demo alipay M000001
    [Arguments]          ${merchantbox}    ${merchantme}        
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${channalbox}    ${channalalipay}
    Select From List By Value    ${routebox}    ${routedata5}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}    
demo alipay
    [Arguments]          ${merchantbox}    ${merchantme}        
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${channalbox}    ${channalalipay}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Log To Console    ${\n} Amount : ${amountdata}
demo wechat M000001
    [Arguments]          ${merchantbox}    ${merchant1data}       
    Select From List By Value    ${merchantbox}    ${merchant1data}
    Select From List By Value    ${channalbox}    ${channalwechat}
    Select From List By Value    ${routebox}    ${routedata5}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${saveqrwechat}    10
    Click Element    ${saveqrwechat}
    Log To Console    ${\n} Amount : ${amountdata}
demo wechat
    [Arguments]          ${merchantbox}    ${merchantme}        
    Select From List By Value    ${merchantbox}    ${merchantme}
    Select From List By Value    ${channalbox}    ${channalwechat}
    Select From List By Value    ${routebox}    ${routedata2}
    Input Text    ${amountbox}    ${amountdata}
    Click Element    ${paymentbutton}
    Wait Until Element Is Visible    ${saveqrwechat}    10
    Click Element    ${saveqrwechat}
    Log To Console    ${\n} Amount : ${amountdata}
put alipay
    [Arguments]           ${alipaybox}            ${alipayaccount}
    # Wait Until Element Is Visible    ${alipaybox}   10
    Input Text            ${alipaybox}            ${alipayaccount}
    Wait Until Element Is Visible    ${alipaypassbox}   10
    Input Text            ${alipaypassbox}        ${alipaypass}
    # Sleep    3
    Log To Console    ${\n} Ali Pay Account 
    Log To Console    ${\n} Username : ${alipayaccount} 
    Log To Console    ${\n} Password : ${alipaypass}
next step
    [Arguments]    ${nextbtn} 
    Click Element    ${nextbtn}

