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
        keyword.opensitapi    ${sitapi}                  ${browser}     
        keyword.demo wechat    ${merchantbox}    ${merchantme}