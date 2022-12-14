
*** Settings ***
Documentation   Login Tests
Resource        ../resources/main.resource 
#Resource        ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***
Deve logar com sucesso 
    Go To Login Page
    Submit Credentials          papito@gmail.com        vaibrasil
    User Logged in
    

Não deve logar com senha incorreta
    Go To Login Page
    Submit Credentials          papito@gmail.com        abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente!  
 
    #captura do código html da página para validação do toast
    # ${temp}       Get Page Source
    # Log           ${temp}


Não deve logar sem informar a senha
    Go To Login Page
    Submit Credentials          papito@gmail.com        ${EMPTY}
    Toast Message Should Be     Por favor, informe a sua senha secreta!


Não deve logar sem informar o email
    Go To Login Page
    Submit Credentials          ${EMPTY}                vaibrasil
    Toast Message Should Be     Por favor, informe o seu email!


Não deve logar sem informar senha e email
    Go To Login Page
    Submit Credentials          ${EMPTY}                ${EMPTY}
    Toast Message Should Be     Por favor, informe suas credenciais!


Deve manter os campos email e senha preenchidos após deslogar
    go to login page
    Check Checkbox              css=input[name="remember"]
    submit Credentials          papito@gmail.com        vaibrasil
    User Logged in
    Click                       css=a[href="/"]
    validate login page
    validate remember me        papito@gmail.com        vaibrasil