*** Settings ***
Library    Selenium2Library
*** Keywords ***
openprod v2
    [Arguments]    ${prodv2}    ${browser}
    Open Browser    ${prodv2}    ${browser}
    Wait Until Page Contains    Merchant Code
    Log To Console    ${\n} ${\n} Open URL : ${prodv2}
payment kbank
    [Arguments]          ${m1}            ${MerchantM031721}
    Select From List By Value    ${m1}     ${MerchantM031721}
    Select From List By Value    ${channel kplus}    ${kp}   
    Select From List By Value    ${routebox}    ${route1}
    Input Text    xpath://*[@id="Amount"]     20
    Input Text    ${phoneme}    0909916198
    Click Element    ${paymentbutton}


*** Variables ***

#####MERCHANT#####
${m1}                 id:MerchantCode
${MerchantM031721}    M031721


${prodv2}    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php
${browser}    chrome
#####CHANNEL### 
${channel kplus}     id:ChannelID
${kp}                payplus_kbank




########ROUTE#########
${routebox}          id:RouteNo
${route1}            1



##########Phone##########
${phoneme}    id:PhoneNumber

######payment#########
${paymentbutton}    id:btnSubmit        

*** Test Cases ***
# 01-payment kbank
#    FOR    ${i}    IN RANGE    2
    # Open Browser    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php    chrome
    # Select From List By Value    ${m1}     ${MerchantM031721}
    # Select From List By Value    ${channel kplus}    ${kp}   
    # Select From List By Value    ${routebox}    ${route1}
    # Input Text    xpath://*[@id="Amount"]     20
    # Input Text    ${phoneme}    0909916198
    # Click Element    ${paymentbutton}
    # END
# 02-payment kbank
#     Open Browser    https://dev-hwplugin.chillpay.co/chillpay/payment/prod/apiservice-payment02.php    chrome
#     Select From List By Value    ${m1}     ${MerchantM031721}
#     Select From List By Value    ${channel kplus}    ${kp}   
#     Select From List By Value    ${routebox}    ${route1}
#     Input Text    xpath://*[@id="Amount"]     20.50
#     Input Text    ${phoneme}    0909916198
#     Click Element    ${paymentbutton}

TC01 payment kbank
    openprod v2    ${prodv2}    ${browser}
    payment kbank    ${m1}    ${MerchantM031721}
