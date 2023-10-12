*** Variables ***
${url}    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php          xz=https://www.cms.com          tw=https://www.Teardown.com
${prodv2}    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php 
${sitapi}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/apiservice-payment02.php
${sitpostfrom}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/form-payment.php
${sitcode}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/code-template01.php
${browser}      chrome
${qrsuccess}    https://dev-hwplugin.chillpay.co/chillpay/payment/dev3/confirm-transaction.php

# # ${link_url}                   https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php 
# ${timeout}                      30
# ${browser}                      chrome

#Element
# ${loginbutton}    class:radius
# ${logoutbutton}    //*[@id="content"]/div/a
${merchantbox}    id:MerchantCode
${channalbox}    id:ChannelID
${routebox}    id:RouteNo
${amountbox}    id:Amount
${paymentbutton}    id:btnSubmit
${cancelbay}    id:infoCancel   
${outbay}    type:button
${alipaybox}    id:J_tLoginId
${alipaypassbox}    id:payPasswd_rsainput
${nextbtn}    id:J_newBtn
${saveqrwechat}    id:btnSaveQR
${clickwechat}    xpath://*[@id="mmp-paymentmethod-tabs"]/div[3]/div[1]
${clickwechatto}    id:TxtChannelWeChatPay
${button make Demo}    id:mmp-button-submitpayment

# qr code
${btnsave}    id:BtnSaveQR
${clickqr}    xpath://*[@id="mmp-paymentmethod-tabs"]/div
${clickqrto}    id:TxtChannelQRPayment
${gettnx}    id:TnxId

#Test Data
${merchantM1}    M000001
${merchantme}    M030371

${channaldata}    internetbank_bay
${channalalipay}    epayment_alipay
${channalwechat}    epayment_wechatpay
${channalqr}    bank_qrcode

${routedata1}    1
${routedata2}    2
${routedata5}    5
${routedata14}   14
${routedata17}   17

${amountdata}    20
${amount20.65}    20.65
${amount20.50}    20.50 
${amount500}     500

# account alipay
${alipayaccount}    sand_forex_921246@alitest.com
${alipaypass}    111111

             