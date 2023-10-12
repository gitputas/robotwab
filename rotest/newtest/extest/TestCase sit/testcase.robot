*** Settings ***
Resource           ../Variable/variable.robot
Resource           ../Keyword/keyword.robot
Resource           ../Setting/setting.robot

# *** Test Cases ***
# open 
#     [Documentation] 
#     ...    open demo prod
#     keyword.openprod    ${prod}    ${browser}             
#     Wait Until Page Contains     Merchant Code
#     Log To Console  ${\n}> open URL :: ${prod}${\n}${\n}    
# put payment
#     Select From List By Value    ${merchantbox}    ${merchant1data}
#     Select From List By Value    ${channalbox}    ${channaldata}
#     Select From List By Value    ${routebox}    ${routedata1}
#     Input Text    ${amountbox}    ${amountdata}
#     Click Element    ${paymentbutton}
# cancelbay
#     Wait Until Page Contains    เข้าสู่ระบบ
#     Click Element    ${cancelbay}
#     Wait Until Page Contains    ท่านได้ยกเลิกการทำรายการนี้
#     Click Element    ${outbay}
