*** Settings ***
Resource           ../../Variable/variable.robot
Resource           ../../Keyword/keyword.robot
Resource           ../../Setting/setting.robot

*** Test Cases ***
TC01 cimbcode SIT 
        [Tags]  SIT
        [Documentation]
        ...  qrcimb
        ...  SIT Environment 
        keyword.opensitcode    ${sitcode}                  ${browser}    
        keyword.demo qrcode codetemplate    ${merchantbox}    ${merchantme}
        keyword.demo codetemplate qr    ${clickqr}    ${clickqrto}
        keyword.get value qr    ${qrsuccess}    ${browser}