*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot

*** Test Cases ***
TC01 bbl PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.internetbbl cancel    ${merchantbox}    ${merchant9}
    Close Window