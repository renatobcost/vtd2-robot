
*** Settings ***
Documentation       Arquivo principal do projeto
Library             Browser

Resource            pages/login.resource
Resource            pages/dash.resource


*** Keywords ***
Do Login
    Go To Login Page
    Submit Email                papito@gmail.com 
    Submit Password             vaibrasil 
    Click btn
    User Logged in


Start Test
    New Browser         headless=False


Finish Test
    Sleep               1
    Take Screenshot


