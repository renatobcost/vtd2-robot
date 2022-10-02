
*** Settings ***
Documentation   Login Tests
Resource        ../resources/main.resource 
#Resource        ${EXECDIR}/resources/main.resource

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***
Deve logar com sucesso 
    Go To Login Page
    Submit Email            papito@gmail.com 
    Submit Password         vaibrasil 
    Click btn
    User Logged in
    

Não deve logar com senha incorreta
    Go To Login Page
    Submit Email                papito@gmail.com 
    Submit Password             senhaerrada 
    Click btn
    Toast Message Should Be     Credenciais inválidas, tente novamente!  
 
    #captura do código html da página para validação do toast
    # ${temp}       Get Page Source
    # Log           ${temp}


Não deve logar sem informar a senha
    Go To Login Page
    Submit Email                papito@gmail.com 
    Click btn
    Toast Message Should Be     Por favor, informe a sua senha secreta!


Não deve logar sem informar o email
    Go To Login Page
    Submit Password             vaibrasil 
    Click btn
    Toast Message Should Be     Por favor, informe o seu email!


Não deve logar sem informar senha e email
    Go To Login Page
    Click btn
    Toast Message Should Be     Por favor, informe suas credenciais!


