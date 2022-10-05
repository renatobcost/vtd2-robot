
*** Settings ***
Documentation       Página de login
Library             Browser


*** Variables ***
${slogan}           Conectando colecionadores de figurinhas da copa.


*** Keywords ***
Go To Login Page
    New Page        https://trade-sticker-dev.vercel.app


validate login page
    Get Text        .logo-container h2    contains    ${slogan}


Submit Credentials
    [Arguments]     ${email}                   ${password}
    Fill Text       input[name="email"]        ${email}
    Fill Text       input[name="password"]     ${password}
    Click           css=button >> text=Entrar


Toast Message Should Be 
    [Arguments]         ${expected_message}
    ${locator}          
    ...             Set Variable       
    ...             css=.Toastify__toast-body div >> text=${expected_message}
    Wait For Elements State     ${locator}      visible     3


validate remember me
    [Arguments]     ${email}                   ${password}
    Get Text        css=input[name="email"]        equal        ${email}
    Get Text        css=input[name="password"]     equal        ${password}   