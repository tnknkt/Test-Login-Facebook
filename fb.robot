*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${F_USERNAME}    1234
${F_PASSWORD}    1234
${T_USERNAME}    my_username
${T_PASSWORD}    my_pass
${URL}        https://www.facebook.com/

*** Test Cases ***
Invalid Case: Login to Facebook 
    #Open Browser To Login Page 
        Open Browser    ${URL}    chrome 

    #Input Username and Password 
        Input Text    id=email    ${F_USERNAME}   # Enter username here 
        Input Text    id=pass     ${F_PASSWORD}   # Enter password here

    #Submit Login Form 
        Click Button   name=login

    #Verify Fail
        Page Should Contain Element    name=login
Valid Case: Login to Facebook 
    #Open Browser To Login Page 
        Open Browser    ${URL}    chrome 

    #Input Username and Password 
        Input Text    id=email    ${T_USERNAME}   # Enter username here 
        Input Text    id=pass     ${T_PASSWORD}   # Enter password here

    #Submit Login Form 
        Click Button   name=login
        Page Should Not Contain Element    name=login