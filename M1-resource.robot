*** Settings ***
Library    OperatingSystem
Library    Screenshot
Resource   open.robot
*** Variable ***
# ${BROWSER}                  Chrome
${BROWSER}                  Firefox

# ${valid_ip_address}         192.168.151.155
${screenshot_file_name}           ${prefix}-screenshot-{index}.png
${remove_screenshot_file_name}    ${prefix}-screenshot-*.png
${log_re}                         geckodriver-{index}.log          
${log_file_name}                  geckodriver-1.log
${valid_transactionId}      ${EMPTY}
${valid_credit_token}       ${EMPTY}
${apikey_sit}           Zp9xQBuLBVVfJZkT4g8DvDl3lYES9vPg5vwDcVWIx2vBb2DhwX3J93Plitmn2DKz
${secretkey_sit}        INrNB3iNCHEd8eiyWY0Fs4D7QmZRMeVOFqoVtudaTnk7pKaVoV7xbfFfzCIVu3VSbF7BO1CVrkyfyRSkzpc4hIFrUg67mWXBeGOmffUs25f9d95bB9xZ8HalrDTcDikcjvS4NBHb3klHbqGw24GG9SlFbWla39bHQslzO

*** Keywords ***
Open Browser With M1
  Set Library Search Order        SL2
  # Remove Files                    ${OUTPUTDIR}/screenshots/${remove_screenshot_file_name}
  # Set Screenshot Directory        ${OUTPUTDIR}/screenshots
  Remove Files                    ${OUTPUTDIR}/${log_file_name}
  # Open Browser To Payment Page
  Open Browser Page

