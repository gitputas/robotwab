*** Settings ***
Library   SeleniumLibrary
Library   RequestsLibrary
Library   Collections
*** Variables ***
${baseUrl}   https://dev-sandbox-apibank.chillpay.co/api/KTBQRPaymentService/Payment
${endPoint}   /posts

*** Test Cases ***
Get the API Token 
    ${Authorization}   create dictionary  Username=ktbapitest01   Password=ktb@pass001
    create session   mysesion   ${baseUrl}
    ${body}=   create dictionary       
    ...  user=ktbapitest01   
    ...  password=ktb@pass001   
    ...  comCode=24179   
    ...  prodCode=24179   
    ...  command=Payment   
    ...  bankCode=6   
    ...  bankRef=K00002 00009876
    ...  tranxId=277445   
    ...  dateTime=20180601180029   
    ...  effDate=20180601   
    ...  amount=3505.00  
    ...  channel=2   
    ...  cusName=Davis John   
    ...  ref1=277445   
    ...  ref2=12345678901234567890
    ${header}=   create dictionary  Content-Type=application/json   Authorization=Basic a3RiYXBpdGVzdDAxOmt0YkBwYXNzMDAx   
    ${response}=   post request mysesion ${endPoint} data=${body} headers=${header}
    ${code}=   convert to string ${response.status_code}
    should be equal ${code} 201
    ${body}= convert to string ${response.content}
    should contain ${body} bar
    ${contentTypeValue}=    get from dictionary ${response.headers} Content-Type
    log to console ${contentTypeValue}





    #  ${Authorization}   create dictionary  Username=ktbapitest01   Password=ktb@pass001
    # ${header}=    create dictionary   Content-type=application/json   Postman-Token=calculated when request is sent   Authorization=Basic a3RiYXBpdGVzdDAxOmt0YkBwYXNzMDAx
    # ${response}=    POST On Session  mysession    /Payment   data=${body}    headers=${header}

    # Log To Console    ${response.status_code}
    # Log To Console    ${response.content}

    # ${status_code}=    Convert To String   ${response.status_code}
    # Should Be Equal   ${status_code}    200

    # ${res_body}=    Convert To String   ${response.content}
    # Should Contain    ${res_body}     0 
    # # Should Contain    ${res_body}     272751

    Dictionary Should Contain Key    dictionary    key