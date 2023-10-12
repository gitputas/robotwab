*** Variables ***
${url}    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php          xz=https://www.cms.com          tw=https://www.Teardown.com
${prodv2}    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php 
${sitapi}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php
${sitpostfrom}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/form-payment.php
${sitcode}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/code-template01.php
${browser}      chrome
${qrsuccess}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/confirm-transaction.php
${beta}    https://dev-hwplugin.chillpay.co/chillpay/payment/beta/apiservice-payment02.php

# # ${link_url}                   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php 
# ${timeout}                      30
# ${browser}                      chrome

#Element
# ${loginbutton}    class:radius
# ${logoutbutton}    //*[@id="content"]/div/a

# PRODCANCEL
${merchantbox}    id:MerchantCode
${channalbox}    id:ChannelID
${routebox}    id:RouteNo
${amountbox}    id:Amount
${paymentbutton}    id:btnSubmit
${cancelbay}    id:infoCancel   
${outbay}    type:button
${backbay}    xpath=//button[@type='button']
${alipaybox}    id:J_tLoginId
${alipaypassbox}    id:payPasswd_rsainput
${nextbtn}    id:J_newBtn
${saveqrwechat}    id:btnSaveQR
${clickwechat}    xpath://*[@id="mmp-paymentmethod-tabs"]/div[3]/div[1]
${clickwechatto}    id:TxtChannelWeChatPay
${button make Demo}    id:mmp-button-submitpayment

# detel
${loginscb}    id:loginID
${loginscbdata}    demo01
# @id="loginPassword"]   1234
${scblink}    css=.mb-2:nth-child(2) .text-left
${ttbbotton}    id:frmIBRespEPaymentLogin_btnCancel
${BottonCancel}    id:btnCancel
${btnCancelConfirm}    id:btnCancelConfirm
${btnCancleQR}    id:btnCancleQR
${btnConfirmCancel}    id:btnConfirmCancel
${closebuttton}    class:closebuttton
# Select From List By Value    xpath://*[@id="CreditMonth"]    3
${shopid}    id:ShopID 
${cardType}    id:CardType
${CreditMonth}    id:CreditMonth
${psbody}    //*[@id="ps-body"]/div[1]/img
${modalConfirmBtnYes}    id:modalConfirmBtnYes
${button}    id:button
${creditcardForm}    xpath://*form[@id='creditcardForm']/p[5]/span/a
${btnBack}    id:btnBack




# qr code
${btnsave}    id:BtnSaveQR
${clickqr}    xpath://*[@id="mmp-paymentmethod-tabs"]/div
${clickqrto}    id:TxtChannelQRPayment
${gettnx}    id:TnxId
${cancelbotton}    id:infoCancel
${BtnCancel}    id:BtnCancel
${btnyes}    id:BtnYes

#Test Data
${merchant9}    M000001-0009
${merchantM1}    M000001
${merchantme}    M030371

# channalbox
${channalinternetbay}    internetbank_bay
${channalinternetscb}    internetbank_scb
${channalinternetbbl}    internetbank_bbl
${channalinternetktb}    internetbank_ktb
${channalinternetttb}    internetbank_ttb
${channalkplus}    payplus_kbank
${channelmobilescb}    mobilebank_scb
${channelmobilebbl}    mobilebank_bbl
${channalalipay}    epayment_alipay
${channalwechat}    epayment_wechatpay
${channalqr}    bank_qrcode
${channelkma}    mobilebank_bay
${channellinepay}    epayment_linepay
${channaltruemoney}    epayment_truemoney
${channalshoopeepay}    epayment_shopeepay
${channelcckbank}    creditcard_kbank
${channelpaysolutions}    creditcard_paysolutions
${channelinstallment_kbank}    installment_kbank
${channelinstallment_scb}    installment_scb
${channelinstallment_krungsri}    installment_krungsri
${channelfirstchoice}    installment_firstchoice
${channelktcflexi}    installment_ktc_flexi
${channalktcforever}    point_ktc_forever
${channalcounterbill}    billpayment_counter
${channelcenpay}    billpayment_cenpay
${channelboonterm}    billpayment_boonterm
${channeloddscb}    odd_scb


${routedata1}    1
${routedata2}    2
${routedata3}    3
${routedata4}    4
${routedata5}    5
${routedata6}    6
${routedata7}    7
${routedata8}    8
${routedata9}    9
${routedata12}    12
${routedata13}    13
${routedata14}   14
${routedata17}   17

${amount10}    10
${amount19}    19
${amountdata}    20
${amount20.50}    20.50 
${amount500}     500
${amount3000}     3000

# account alipay
${alipayaccount}    sand_forex_921246@alitest.com
${alipaypass}    111111

${oddaccountbox}    id:ODDAccount
${oddaccountscb}    a3af3f18eb174ba487c38a6768bb4658

${mobilenobox}    id:MobileNo
${mobileno}    66936925929
