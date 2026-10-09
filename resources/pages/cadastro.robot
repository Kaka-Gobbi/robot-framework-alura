*** Settings ***


*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
@{selecionar_times}
...                       //option[contains(.,'Programação')]
...                       //option[contains(.,'Front-End')]
...                       //option[contains(.,'Data Science')]
...                       //option[contains(.,'Devops')] 
...                       //option[contains(.,'UX e Design')]
...                       //option[contains(.,'Mobile')]
...                       //option[contains(.,'Inovação e Gestão')]

*** Keywords ***
Dado que o usuário preencha os campos do formulário
    ${Nome}=          FakerLibrary.First Name        
    Input Text       ${CAMPO_NOME}      ${Nome}
    ${Cargo}=         FakerLibrary.Job
    Input Text       ${CAMPO_CARGO}     ${Cargo}
    ${Imagem}=        FakerLibrary.Image Url    width=100    height=100 
    Input Text       ${CAMPO_IMAGEM}    ${Imagem}
    Click Element    ${CAMPO_TIME}
    Click Element    ${selecionar_times}[0]

Quando clicar em "Criar Card"
    Click Element    ${BOTAO_CARD}

Então o card deve ser criado no time esperado
    Element Should Be Visible    class:colaboradores

Então identificar 3 cards no time esperado
    FOR    ${i}   IN RANGE   1    3
        Dado que o usuário preencha os campos do formulário
        Quando clicar em "Criar Card"

    END 
    
    Sleep  10s

Então criar e identificar um card em cada time disponível
    FOR    ${indice}    ${time}     IN ENUMERATE    @{selecionar_times}
        Dado que o usuário preencha os campos do formulário
        Click Element   ${time}
        Quando clicar em "Criar Card" 
        
    END

Dado que o usuário não preencha nenhum campo obrigatório
    No Operation
    

Então o sistema deve apresentar uma mensagem de campo obrigatório
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro 
