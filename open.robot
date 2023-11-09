*** Settings ***
Documentation    Example Robot Framework Test with Selenium2Library
Library           Selenium2Library
Library    OperatingSystem
Resource    M1-resource.robot
Suite Setup       Open Browser With M1
Suite Teardown    Close Browser
# Suite Setup       Browser.Open Browser    https://www.google.com     browser=Chrome
# Suite Teardown    Close Browser
# Library    Browser

*** Variables ***
    # http://firefox.com
${IM}    http://10.138.20.114:8080/prweb    
${sim}    https://www.wikipedia.org/
${DELAY}    3
*** Test Cases ***
Example Test Case
    [Documentation]    This is an example test case using Selenium2Library
    Wait Until Element Is Visible    id:js-link-box-en
    # Verify Page Title    Google

*** Keywords ***
Open Browser Page
  Open Browser                  ${sim}    ${BROWSER}
  Set Selenium Speed            ${DELAY}
    
# Open Search
#     Wait Until Element Is Visible    id:js-link-box-en
    # Execute Javascript          window.open('${sim}')
    # Switch Window               NEW
    # ${link_items}=              Get All Links
    # Log                         ${link_items}    
    

