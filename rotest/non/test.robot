*** Settings ***
Library    Selenium2Library
# Test Teardown     Go To   about:blank 
# Suite Teardown    Close All Browsers

***Variable***
${link}    Xpathxxx

***keyword***
Go to link
    Open browser ${link}
           
*** Test Cases ***
Test Case 001
    [Documentation] 
    … This is my link : ${link}
    Go to link
    # Log to console ${/n}${/n} Open Link Complete.