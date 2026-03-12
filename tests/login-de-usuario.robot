*** Comments ***
Este é um arquivo de desenvolvimento dos testes
da funcionalidade de login de usuário do sistema.

*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Resource       ../resources/locators.robot

*** Test Cases ***
Scenario: Login de usuario realizado com sucesso
    # Cenário de teste para autenticação do usuário
    Given Eu estou na página de login do usuário
    And Eu preencho meu nome de usuário
    And Eu preencho minha senha de acesso
    When Eu confirmo a realização do login
    Then Eu sou redirecionado para a página de dashboard

Scenario: Acesso negado
    # Cenário de testes para acesso negado
    Given Eu estou na página de login do usuário
    And Eu preencho um nome de usuário inválido
    And Eu preencho uma senha de usuário inválida
    When Eu confirmo a realização do login
    Then Eu sou informado que o acesso é negado

*** Keywords ***
Eu estou na página de login do usuário
    Open Browser                ${URL_BASE}              chrome

Eu preencho meu nome de usuário
    Input Text                  ${INPUT_NOMEUSUARIO}     admin

Eu preencho minha senha de acesso
    Input Text                  ${INPUT_SENHAUSUARIO}    123

Eu confirmo a realização do login
    Click Button                ${BUTTON_LOGIN}
    Sleep                       5s

Eu sou redirecionado para a página de dashboard
    Location Should Be          ${URL_DASHBOARD}
    Capture Page Screenshot     screenshots/login-de-usuario-realizado-com-sucesso.png

Eu preencho um nome de usuário inválido
    Input Text                  ${INPUT_NOMEUSUARIO}      teste

Eu preencho uma senha de usuário inválida
    Input Text                  ${INPUT_SENHAUSUARIO}     teste123

Eu sou informado que o acesso é negado
    Element Should Contain      ${MESSAGE_ACESSO_NEGADO}  Usuário ou senha inválidos
    Capture Page Screenshot     screenshots/acesso-negado.png
    