Automação de Testes com Robot Framework

Projeto desenvolvido durante o curso **Robot Framework: Automatizando testes no padrão BDD**, da Alura.

O objetivo do projeto é praticar a automação de testes funcionais utilizando **Robot Framework**, aplicando conceitos de **BDD**, **Page Object Model (POM)** e geração de dados para os testes.

Tecnologias utilizadas

- Robot Framework
- SeleniumLibrary
- FakerLibrary
- Python
- Selenium
- Visual Studio Code
- Git e GitHub

Cenários automatizados

O projeto contém cenários para validar o cadastro de colaboradores na aplicação **Organo**, incluindo:

- Criação de um card
- Criação de múltiplos cards
- Criação de cards para diferentes times
- Validação do preenchimento dos campos obrigatórios

Estrutura do projeto

```text
robot-framework-alura/
│
├── resources/
│   ├── pages/
│   │   └── cadastro.robot
│   │
│   ├── shared/
│   │   └── setup_teardown.robot
│   │
│   └── main.robot
│
├── testes/
│   ├── preenchimento_correto.robot
│   └── preenchimento_incorreto.robot
│
└── .gitignore
