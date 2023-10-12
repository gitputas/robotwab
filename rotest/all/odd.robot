*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String


*** Variables ***
${base_url}     https://dev-sandbox-apibank.chillpay.co/api/KTBQRPaymentService/Payment

*** Test Cases ***
API QR success payment
    create session    mysession   ${base_url}
    ${Authorization}   create dictionary  Username=ktbapitest01   Password=ktb@pass001
    create session   mysesion   ${baseUrl}
    ${body}=    create dictionary 
    ${body}=    create dictionary    {{req_body}}
    ...    MerchantCode=M030371           
    ...    OrderNo=1        
    ...    CustomerId=cus100005        
    ...    Amount=30000
    ...    PhoneNumber=0936925929
    ...    Description=payment
    ...    ChannelCode=odd_scb
    ...    Currency="764",
    ...    LangCode=EN
    ...    RouteNo=1
    ...    IPAddress=171.103.196.214
    ...    ApiKey=WPTtuWCJDTewIjRcjvtGhx9ZTV3057xjDOZ47jy53ArInJTtzfVTXn7T1XyATATU             
    ...    ODDAccount=829dcbda88164e8f82b8f3cf8c69156a
    ...    CheckSum=${null}
    function strOrEmpty( str )    {return str || "";};
    var concatData=strOrEmpty(body.MerchantCode) + strOrEmpty(body.OrderNo) + strOrEmpty(body.CustomerId) + strOrEmpty(body.Amount) + strOrEmpty(body.PhoneNumber) + strOrEmpty(body.Description) + strOrEmpty(body.ChannelCode) + strOrEmpty(body.Currency) + strOrEmpty(body.LangCode) + strOrEmpty(body.RouteNo) + strOrEmpty(body.IPAddress) + strOrEmpty(body.ApiKey) + strOrEmpty(body.ODDAccount);
    Log To Console   ("concatData: " + concatData);
    body.CheckSum = CryptoJS.MD5(concatData+secretKey).toString();
    console.log("CheckSum: " + body.CheckSum);
    pm.collectionVariables.set('req_body', JSON.stringify(body));
    ${header}=    create dictionary   Content-type=application/json   Postman-Token=calculated when request is sent   Authorization=Basic a3RiYXBpdGVzdDAxOmt0YkBwYXNzMDAx
    ${response}=    POST On Session  mysession    /Payment   data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    ${status_code}=    Convert To String   ${response.status_code}
    Should Be Equal   ${status_code}    200

    ${res_body}=    Convert To String   ${response.content}
    Should Contain    ${res_body}     0 
    # Should Contain    ${res_body}     272751
