*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot
# Resource           ../../../py/qrpnot.py

*** Test Cases ***
TC01 qrcimb PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.qrcimb cancel  ${merchantbox}    ${merchant9}
    # Close Window
TC01 qrcimb beta 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.open beta    ${beta}    ${browser}
    keyword.qrcimb cancel beta  ${merchantbox}    ${merchantM1}
    # Close Window
TC01 qrcimb tax30 beta 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.open beta    ${beta}    ${browser}
    keyword.qrcimb tax30 cancel beta  ${merchantbox}    ${merchantM1}
    # Close Window
