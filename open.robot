*** Settings ***
Documentation    Example Robot Framework Test with Selenium2Library
# Library           Selenium2Library
# Suite Setup       Browser.Open Browser    https://www.google.com     browser=Chrome
# Suite Teardown    Close Browser
Library    Browser


*** Test Cases ***
Example Test Case
    [Documentation]    This is an example test case using Selenium2Library
    Open Search     
    # Verify Page Title    Google

*** Keywords ***
Open Search
    
    Open Browser    http://google.com     webkit
    Wait Until Network Is Idle
    

