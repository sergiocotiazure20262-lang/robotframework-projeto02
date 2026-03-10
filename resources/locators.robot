*** Comments ***
Este é um arquivo de configuração para definir as variáveis
que serão utilizadas pelos testes do Robot Framework.

*** Variables ***
${URL_BASE}             https://cotiaws.github.io/projet-estoque/index.html
${INPUT_NOMEUSUARIO}    xpath=//*[@id="usuario"]
${INPUT_SENHAUSUARIO}   xpath=//*[@id="senha"]
${BUTTON_LOGIN}         xpath=//*[@id="loginForm"]/button
${MENU_CADASTRO}        xpath=/html/body/nav/div/div/a[2]
${INPUT_NOMEPRODUTO}    xpath=//*[@id="nome"]
${INPUT_QUANTIDADE}     xpath=//*[@id="quantidade"]
${BUTTON_CADASTRO}      xpath=//*[@id="produtoForm"]/button
${MESSAGE_CADASTRO}     xpath=//*[@id="mensagem"]