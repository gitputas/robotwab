*** Settings ***
Resource           ../../../Variable/variable.robot
Resource           ../../../Keyword/keyword.robot
Resource           ../../../Setting/setting.robot

*** Test Cases ***
TC01 ShopeePayR1 PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.ShopeePayR1 cancel    ${merchantbox}    ${merchantM1}
    # Close Window
TC02 ShopeePayR2 PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.ShopeePayR2 cancel    ${merchantbox}    ${merchantM1}
    # Close Window
TC03 ShopeePayR3 PROD 
    [Tags]  prod
    [Documentation]
    ...  prodv2 Environment 
    keyword.openprod v2    ${prodv2}    ${browser}
    keyword.ShopeePayR3 cancel    ${merchantbox}    ${merchantM1}
    # Close Window