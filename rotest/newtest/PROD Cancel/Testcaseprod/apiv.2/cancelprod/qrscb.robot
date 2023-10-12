*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot
# Resource           ../../../py/qrpnot.py

*** Test Cases ***
TC01 qrscb PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.qrscb cancel  ${merchantbox}    ${merchant9}
    # Close Window