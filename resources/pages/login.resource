
*** Settings ***
Documentation       Página de login
Library             Browser

*** Keywords ***
Go To Login Page
    New Page            https://trade-sticker-dev.vercel.app


Submit Email
    [Arguments]         ${email}        
    Fill Text           input[name=email]           ${email} 

Submit Password
    [Arguments]         ${password}
    Fill Text           input[name=password]        ${password}
    
Click btn
    Click               css=button >> text=Entrar


Toast Message Should Be 
    [Arguments]         ${expected_message}
    ${locator}          
    ...             Set Variable       
    ...             css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State     ${locator}      visible     3