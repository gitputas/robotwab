*** Variables ***
${simpos_url}            https://developer.sprint.paymentology.com/tools/simpos/
${login_url}             https://developer.sprint.paymentology.com/login/
${login_btn}             xpath: //*[contains(text(), "Login")]
${email}                 id:login-user-email
${password}              id:login-user-password
${signin_btn}            id:js--login-submit

#Card Details
${web_btn}               css=#web > a
${cardNo_field}          cardNumber
${expiredMonth_field}    id:month 
${expiredYear_field}     id:year 
${cvv_field}             id:cvv 

#Transaction Details
${amount_field}          id:amount 

#Acquiring Merchant:
${acquire_field}         acquirer
${provice}               province
${country}               country

${swipe_btn}             id:swipe




#[Test Data] Account
${email_test_data}       it@gbprimepay.com
${password_test_data}    Ts*4p3%D

#[Test Data] Visa Card
${cardNo_data}          5267 2668 6181 7199
${expiredMonth_data}    03
${expiredYear_data}     28 
${cvv_data}             766

#[Test Data] Transaction Details
${amount_data}          150

#[Test Data] Acquiring Merchant:
${acquire__data}         Test Ryu Merchantttttt 
${provice_data}          Pathum Thanit
${country_data}          THA
