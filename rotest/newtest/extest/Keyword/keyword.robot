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
    
openprod post



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
    Input Text     xpath://*[@id="Amount"]   ${amount20.65}
    Click Element    xpath://*[@id="btnSubmit"]
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

