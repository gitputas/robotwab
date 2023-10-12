*** Settings ***
Resource           ../../Variable/variable.robot
Resource           ../../Keyword/keyword.robot
Resource           ../../Setting/setting.robot

*** Test Cases ***
# TC01 Alipay SIT 
#         [Tags]  SIT
#         [Documentation]
#         ...  Ali Pay 
#         ...  SIT Environment 
#         keyword.opensitcode   ${sitcode}                  ${browser}  
#         keyword.demo wechatcode M000001    ${merchantbox}    ${merchantM1}
TC02 wechat SIT 
        [Tags]  SIT
        [Documentation]
        ...  Ali Pay 
        ...  SIT Environment 
        keyword.opensitcode    ${sitcode}   ${browser}
        keyword.demo wechatcode    ${merchantbox}   ${merchantme}
        keyword.demo codetemplate    ${clickwechat}    ${clickwechatto}



   