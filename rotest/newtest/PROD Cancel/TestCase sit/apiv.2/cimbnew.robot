*** Settings ***
Resource           ../../Variable/variable.robot
Resource           ../../Keyword/keyword.robot
Resource           ../../Setting/setting.robot

*** Test Cases ***
TC01 qrcimb SIT 
    [Tags]  SIT
    [Documentation]
    ...  Ali Pay 
    ...  SIT Environment 
    keyword.opensitapi    ${sitapi}                  ${browser}     
    keyword.open sit cimb new    ${merchantbox}    ${merchantM1}
    keyword.get value qr    ${qrsuccess}    ${browser}
TC02 qrcimb SIT 
    [Tags]  SIT
    [Documentation]
    ...  Ali Pay 
    ...  SIT Environment 
    keyword.opensitapi    ${sitapi}                  ${browser}     
    keyword.open sit cimb new    ${merchantbox}    ${merchantme}
    keyword.get value qr    ${qrsuccess}    ${browser}

