*** Comments ***
Esse é um arquivo para desenvolvimento dos testes da
funcionalidade de consulta de produto

*** Settings ***
Library       SeleniumLibrary
Library       OperatingSystem
Resource      ../resources/locators.robot

*** Test Cases ***
Scenario: Consulta de produtos realizado com sucesso
    # Cenário de teste para consulta de produtos
    Given Eu estou na página de login do usuário
    And Eu preencho meu nome de usuário
    And Eu preencho minha senha de usuário
    And Eu solicito acesso ao sistema e sou redirecionado para o dashboard
    And Eu clico no menu de consulta de produtos
    And Eu preencho o nome do produto desejado para pesuisa
    When Eu confirmo a realização da pesquisa dos produtos
    Then Eu visualizo pelo menos 2 produtos obtidos na pesquisa

*** Keywords ***
Eu estou na página de login do usuário
    Open Browser              ${URL_BASE}              chrome

Eu preencho meu nome de usuário
    Input Text                ${INPUT_NOMEUSUARIO}     admin

Eu preencho minha senha de usuário
    Input Text                ${INPUT_SENHAUSUARIO}    123

Eu solicito acesso ao sistema e sou redirecionado para o dashboard
    Click Button              ${BUTTON_LOGIN}

Eu clico no menu de consulta de produtos
    Click Link                ${MENU_CONSULTA}

Eu preencho o nome do produto desejado para pesuisa
    Input Text                ${INPUT_PESQUISA}        Notebook

Eu confirmo a realização da pesquisa dos produtos
    Click Button              ${BUTTON_PESQUISA}
    Sleep                     5s

Eu visualizo pelo menos 2 produtos obtidos na pesquisa
    Element Should Contain    ${RESULTADO_PESQUISA_1}    Notebook Dell Inspiron
    Element Should Contain    ${RESULTADO_PESQUISA_2}    Notebook Lenovo ThinkPad
    Capture Page Screenshot   screenshots/consulta-de-produtos-realizado-com-sucesso.png
