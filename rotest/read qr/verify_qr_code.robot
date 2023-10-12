*** Settings ***
# Resource     verify_qr_code_keyword.robot
Library    ../ReadQrCode.py
Library    RequestsLibrary
Library    Selenium2Library

*** Variables ***
${qr_image}       C:\rotest\read qr\testqr.png

*** Keywords ***
Call Generate Qrcode API
    Create Session    generate_qrcode    https://dev-sandbox-cdnv3.chillpay.co/QRCode/003/8f8e76e7c8fda491e71b1f14ee5c239d2bbc7e95/PaymentProcess
    ${response}=    POST ON SESSION    generate_qrcode    url=/generateqr
    Set Test Variable    ${response}

Verify Qrcode Success
    [Arguments]    ${response}
    # Response
    Should Be Equal As Integers    ${response.status_code}    200
    ${response_body}=   Set Variable   ${response.json()}
    ${response_status}=    Set Variable     ${response_body['status']}
    Should Be Equal As Strings    ${response_status['code']}    0
    Should Be Equal As Strings    ${response_status['description']}    success
    Verify QRCODE From Python    C:\rotest\read qr\testqr.png
    ${response_data}=      Set Variable     ${response_body['data']}
    Should Be Equal    ${result_qrcode}    www.google.com

Verify QRCODE From Python
    [Arguments]    ${qr_image}    
    ${result_qrcode}=    ReadQrcode.readQrCodeFromQrImage    ${qr_image}
    Set Test Variable    ${result_qrcode}


*** Test Cases ***
TEST_CASE_00001 Success - Call Api Generate Qr Code
    # When Call Generate Qrcode API   
    Verify Qrcode Success    ${response}
    Verify QRCODE From Python    ${qr_image}
    Log To Console    ${\n} ${\n}
