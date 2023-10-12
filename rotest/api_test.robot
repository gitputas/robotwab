*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections

*** Keywords ***
Create Session
    [Arguments]    ${session_alias}    ${base_url}
    Create Session    ${session_alias}    ${base_url}

Get Request
    [Arguments]    ${session_alias}    ${uri}
    ${response}    Get Request    ${session_alias}    ${uri}
    Return From Keyword    ${response}

*** Test Cases ***
Get User Profile - Success
    [Documentation]    To verify the GET user profile API returns correct data for an existing user.
    Create Session    reqres    https://reqres.in
    ${response}    Get Request    reqres    /api/users/12
    Should Be Equal As Strings    ${response.status_code}    200
    ${expected_data}=    Create Dictionary    ID=12    Email=rachel.howell@reqres.in    First Name=Rachel    Last Name=Howell    Avatar=https://reqres.in/img/faces/12-image.jpg
    Dictionary Should Be Equal As Strings    ${response.json()}    ${expected_data}

Get User Profile - User Not Found
    [Documentation]    To verify the GET user profile API returns 404 Not Found for a non-existing user.
    Create Session    reqres    https://reqres.in
    ${response}    Get Request    reqres    /api/users/1234
    Should Be Equal As Strings    ${response.status_code}    404
    Should Be Equal As Strings    ${response.content}    {}
