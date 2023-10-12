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
    keyword.opensitpostfrom    ${sitpostfrom}    ${browser}
    keyword.open sit cimb new    ${merchantbox}    ${merchantme}
    keyword.get value qr    ${qrsuccess}    ${browser}