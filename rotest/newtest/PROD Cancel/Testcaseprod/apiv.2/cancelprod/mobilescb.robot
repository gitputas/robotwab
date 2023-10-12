*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot

*** Test Cases ***
TC01 mobilebank_scb PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.SCB Easy App cancel    ${merchantbox}    ${merchant9}
    # Close Window