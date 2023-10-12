*** Settings ***
Resource            ../setting/setting.robot
Resource            ../variable/variable.robot
Resource            ../keyword/keyword.robot
Suite Teardown      Close All Browsers

*** Test Cases ***
[TC01] Login
        [Documentation] 
        ...    Jitta UAT Payment
        keyword.Login SimPOS         
        ...    ${simpos_url}    
        ...    ${login_url}    
        ...    ${login_btn}        
        ...    ${email}
        ...    ${email_test_data}
        ...    ${password}
        ...    ${password_test_data}
        ...    ${signin_btn}
        keyword.Card Detail    
        ...    ${cardNo_field}
        ...    ${cardNo_data}
        ...    ${expiredMonth_field}
        ...    ${expiredMonth_data}
        ...    ${expiredYear_field}
        ...    ${expiredYear_data}
        ...    ${cvv_field}
        ...    ${cvv_data}
        keyword.Transaction Detail    
        ...    ${amount_field}
        ...    ${amount_data}
        keyword.Acquiring Merchant    
        ...    ${acquire_field}
        ...    ${acquire__data}
        ...    ${provice}
        ...    ${provice_data}
        ...    ${country}
        ...    ${country_data}
        ...    ${swipe_btn}
        Page Should Contain    Result Code: 0000 Approved

        