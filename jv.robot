*** Settings ***

Library    RequestsLibrary
Library    Collections
Library    JsonValidator
*** Keywords ***
# ${value}   JsonValidator.Get Elements   jsonString       jsonPath


*** Test Cases ***

# Example GET keyword
#     ${body}    Create Dictionary    firstname=John
#     ${response}    GET    https://restful-booker.herokuapp.com/booking    ${body}
#     Status Should Be    200
#     Log List    ${response.json()}
 

# Example POST keyword login
#     ${body}    Create Dictionary    username=admin    password=password123
#     ${response}    POST    url=https://restful-booker.herokuapp.com/auth    json=${body}
#     Log    ${response.json()}
#     ${token}    Set Variable    ${response.json()}[token]
#     Log    ${token}

We get jobs data from json 
    Create Session    jobsList    url=https://web-demo.qahive.com
    ${response}    GET On Session    jobsList    url=/api/v1/jobs    cookies=${Cookie_Token}
    Log    ${response.status_code} # Status code
    Log    ${response.json()}      # Json Response from API 
    ${totalJobsInList}     JsonValidator.Get Elements    ${response.json()}    $.totalJobs
    ${companyInJob1}     JsonValidator.Get Elements    ${response.json()}    $.jobs[0].company
    ${jobLocationInJob2}     JsonValidator.Get Elements    ${response.json()}    $.jobs[1].jobLocation
    Log Many    ${totalJobsInList}    ${companyInJob1}    ${jobLocationInJob2}