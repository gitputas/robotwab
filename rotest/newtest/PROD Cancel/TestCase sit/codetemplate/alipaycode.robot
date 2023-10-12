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
        keyword.opensitcode    ${sitcode}                  ${browser}    
        keyword.demo alipaycode    ${merchantbox}    ${merchantme}
        keyword.demo codetemplate    ${clickwechat}    ${clickwechatto}
        # keyword.put alipay    ${alipaybox}    ${alipayaccount}
        # keyword.next step    ${nextbtn}

   