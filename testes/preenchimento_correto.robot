*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que o usuário acesse o Organo
Test Teardown    Fechar o navegador



*** Test Cases ***
Verificar a criação de um card
    Dado que o usuário preencha os campos do formulário
    Quando clicar em "Criar Card"
    Então o card deve ser criado no time esperado 
    
Verificar a criação de multiplos cards
    Dado que o usuário preencha os campos do formulário
    Quando clicar em "Criar Card"
    Então identificar 3 cards no time esperado 

Verificar se é possível criar um card para cada time disponível
    Dado que o usuário preencha os campos do formulário 
    Então criar e identificar um card em cada time disponível 



    
    
    


