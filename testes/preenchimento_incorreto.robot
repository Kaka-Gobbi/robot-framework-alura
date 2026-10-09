*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que o usuário acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar campos obrigatórios
    Dado que o usuário não preencha nenhum campo obrigatório
    Quando clicar em "Criar Card"
    Então o sistema deve apresentar uma mensagem de campo obrigatório





    

    