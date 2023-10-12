*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot

*** Test Cases ***
# TC01 bay PROD 
    # [Tags]  prod
    # [Documentation]
    # ...  bay
    # ...  prodv2 Environment 
    # keyword.openprod v2    ${prodv2}    ${browser}
    # keyword.internetbay Fail    ${merchantbox}    ${merchant9}

TC02 scb PROD 
    [Tags]  prod
    [Documentation]
    ...  bay
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.internetbay cancel    ${merchantbox}    ${merchant9}