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
        keyword.opensitpostfrom    ${sitpostfrom}                  ${browser}     
        keyword.demo alipay    ${merchantbox}    ${merchantme}
        keyword.put alipay    ${alipaybox}    ${alipayaccount}
        # keyword.next step    ${nextbtn}

   