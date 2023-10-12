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
#     # FOR    ${i}    IN RANGE    5
    keyword.opensitapi    ${sitapi}    ${browser}
    keyword.demo alipay M000001    ${merchantbox}    ${merchantM1}
    keyword.put alipay    ${alipaybox}    ${alipayaccount}
    Sleep    3
    # keyword.next step    ${nextbtn}
    # # Sleep    3
    # Close All Browsers 
    # END
TC02 Alipay SIT
        [Tags]  SIT
        [Documentation]
#         ...  Ali Pay 
#         ...  SIT Environment 
        keyword.opensitapi   ${sitapi}                  ${browser}     
        keyword.demo alipay    ${merchantbox}    ${merchantme}
        keyword.put alipay    ${alipaybox}    ${alipayaccount}
        # keyword.next step    ${nextbtn}
