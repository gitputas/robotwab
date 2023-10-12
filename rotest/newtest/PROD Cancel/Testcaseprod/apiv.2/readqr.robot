*** Settings ***
Resource     ../keywords/verify_qr_code_keyword.robot

*** Test Cases ***
TASE_CASE_00001 Success - Call Api Generate Qr Code
    When Call Generate Qrcode API   
    Then Verify Qrcode Success    ${response}