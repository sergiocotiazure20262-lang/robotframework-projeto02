*** Comments ***
Este é um arquivo para desenvolvimento dos testes
da funcionalidade de cadastro de produto.

*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem
Resource        ../resources/locators.robot

*** Test Cases ***
Scenario: Cadastro de produto realizado com sucesso
    # Cenário de teste para cadastro de produto
    Given Eu estou na página de login do usuário
    And Eu preencho meu nome de usuário
    And Eu preencho minha senha de usuário
    And Eu solicito acesso ao sistema e sou redirecionado para o dashboard
    And Eu clico no menu de cadastro de produto
    And Eu preencho o nome do produto
    And Eu preencho a quantidade do produto
    When Eu confirmo a realização do cadastro do produto
    Then Eu sou informado que o produto foi cadastrado com sucesso

*** Keywords ***
Eu estou na página de login do usuário
    # Abrir a página inicial de login do usuário no sistema
    Open Browser       ${URL_BASE}             chrome

Eu preencho meu nome de usuário
    # Preencher o nome do usuário para login
    Input Text         ${INPUT_NOMEUSUARIO}    admin

Eu preencho minha senha de usuário
    # Preencher a senha do usuário para login
    Input Text         ${INPUT_SENHAUSUARIO}   123

Eu solicito acesso ao sistema e sou redirecionado para o dashboard
    # Clicar no botão para autenticação do usuário
    Click Button       ${BUTTON_LOGIN}

Eu clico no menu de cadastro de produto
    # Clicar no menu para acessar a página de cadastro de produto
    Click Link         ${MENU_CADASTRO}

Eu preencho o nome do produto
    # Preencher o campo do nome do produto para cadastro
    Input Text         ${INPUT_NOMEPRODUTO}      Produto Teste

Eu preencho a quantidade do produto
    # Preencher o campo da quantidade do produto para cadastro
    Input Text         ${INPUT_QUANTIDADE}       10

Eu confirmo a realização do cadastro do produto
    # Clicar no botão para executar o cadastro do produto
    Click Button       ${BUTTON_CADASTRO}
    Sleep              5s

Eu sou informado que o produto foi cadastrado com sucesso
    # Verificar a mensagem exibida pelo sistema
    Element Should Contain     ${MESSAGE_CADASTRO}       Produto cadastrado com sucesso!
    Capture Page Screenshot    screenshots/cadastro-de-produto-realizado-com-sucesso.png
