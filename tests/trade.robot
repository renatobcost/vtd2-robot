
*** Settings ***
Documentation       Teste de negociação das figurinhas da copa
Resource            ../resources/main.resource 

Test Setup          Start Test
Test Teardown       Finish Test


*** Test Cases ***
Deve negociar a figurinha do Neymar Legend
    Do Login

    Search User                 legend
    Select Stciker              Neymar Jr
    Get In Touch
    Whatsapp Sticker Message    Neymar Jr

