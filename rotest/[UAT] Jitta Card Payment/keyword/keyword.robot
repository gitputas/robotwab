*** Settings ***
Resource            ../setting/setting.robot
Resource            ../variable/variable.robot

Library    XML

*** Keywords ***
Login SimPOS 
        [Arguments]          
        ...    ${simpos_url}   
        ...    ${login_url}
        ...    ${login_btn}       
        ...    ${email}
        ...    ${email_test_data}
        ...    ${password}
        ...    ${password_test_data}
        ...    ${signin_btn}
        Open Browser                        ${simpos_url}           gc
        Maximize Browser Window
        Click Element                       ${login_btn}
        Wait Until Element Is Visible       ${email}
        Input Text                          ${email}                ${email_test_data}
        Wait Until Element Is Visible       ${password}            
        Input Password                      ${password}             ${password_test_data}
        Wait Until Element Is Visible       ${signin_btn}
        Click Element                       ${signin_btn}  
        Sleep    5        


Card Detail
        [Arguments]
        ...    ${cardNo_field}
        ...    ${cardNo_data}
        ...    ${expiredMonth_field}
        ...    ${expiredMonth_data}
        ...    ${expiredYear_field}
        ...    ${expiredYear_data}
        ...    ${cvv_field}
        ...    ${cvv_data}

        Select Frame                         //*[@id="post-363"]/section[1]/div/div/div/iframe
        Click Element                        ${web_btn}
        Wait Until Element Is Visible        ${cardNo_field}
        Execute Javascript    document.getElementById('${cardNo_field}').value='${cardNo_data}'
        Log To Console    ${\n}${\n}> Card Number : ${cardNo_data} ${\n}
        Wait Until Element Is Visible        ${expiredMonth_field}
        Input Text                           ${expiredMonth_field}       ${expiredMonth_data}
        Log To Console    > Expired Month : ${expiredMonth_data} ${\n}
        Wait Until Element Is Visible        ${expiredYear_field}
        Input Text                           ${expiredYear_field}        ${expiredYear_data}
        Log To Console    > Expired Year : ${expiredYear_data} ${\n}
        Wait Until Element Is Visible        ${cvv_field}        
        Input Text                           ${cvv_field}                ${cvv_data}
        Log To Console    > CVV : ${cvv_data} ${\n}

Transaction Detail
        [Arguments]
        ...    ${amount_field}
        ...    ${amount_data}
        # Wait Until Page Contains             Transaction Details        30
        Wait Until Element Is Visible        ${amount_field}
        Input Text                           ${amount_field}            ${amount_data}
        Log To Console    > Amount : ${amount_data} ${\n}

Acquiring Merchant
        [Arguments]
        ...    ${acquire_field}
        ...    ${acquire__data}
        ...    ${provice}
        ...    ${provice_data}
        ...    ${country}
        ...    ${country_data}
        ...    ${swipe_btn}
        # Wait Until Page Contains            Acquiring Merchant:         30
        Wait Until Element Is Visible       ${acquire_field}
        Click Element                       ${acquire_field}
        Execute Javascript    document.getElementById('${acquire_field}').value='${acquire__data}'
        Log To Console    > Name of the shop : ${acquire__data}${\n}

        Wait Until Element Is Visible       ${provice}
        Click Element                       ${provice}
        Execute Javascript    document.getElementById('${provice}').value='${provice_data}'
        Log To Console    > Province or city of the shop : ${provice_data}${\n}

        Wait Until Element Is Visible       ${country}
        Click Element                       ${country}
        Execute Javascript    document.getElementById('${country}').value='${country_data}'
        Log To Console    > Three letter country code : ${country_data}${\n}

        Wait Until Element Is Visible       ${swipe_btn}
        Click Element                       ${swipe_btn}
        Sleep    10
        






        


