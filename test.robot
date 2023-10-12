*** Settings ***
Documentation    Example Robot Framework Test with Selenium2Library
Library           Selenium2Library
Suite Setup       Open Browser    https://www.google.com    Chrome
Suite Teardown    Close Browser

*** Test Cases ***
Example Test Case
    [Documentation]    This is an example test case using Selenium2Library
    Open Browser To Example Page
    Perform Search
    Click First Search Result
    Verify Page Title    Example Domain

*** Keywords ***
Open Browser To Example Page
    Go To    https://www.google.com
    Maximize Browser Window

Perform Search
    Input Text    name=q    Robot Framework
    Press Keys    name=q    \\13  # Simulate pressing Enter key

Click First Search Result
    Click Link    Partial Link Text    Robot Framework

Verify Page Title
    [Arguments]    ${expected_title}
    ${title}    Get Title
    Should Be Equal    ${title}    ${expected_title}
vec    
    Select All From List    555