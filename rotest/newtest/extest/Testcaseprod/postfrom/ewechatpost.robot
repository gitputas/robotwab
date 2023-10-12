*** Settings ***
Resource           ../../Variable/variable.robot
Resource           ../../Keyword/keyword.robot
Resource           ../../Setting/setting.robot

*** Test Cases ***
TC01 Alipay SIT 
        [Tags]  SIT
        [Documentation]
        ...  Ali Pay 
        ...  SIT Environment 
        keyword.opensitpostfrom    ${sitpostfrom}    ${browser}  
        keyword.demo wechat M000001    ${merchantbox}    ${merchant1data}
TC02 Alipay SIT 
        [Tags]  SIT
        [Documentation]
        ...  Ali Pay 
        ...  SIT Environment 
        keyword.opensitpostfrom    ${sitpostfrom}    ${browser}  
        keyword.demo wechat    ${merchantbox}    ${merchantme}

   