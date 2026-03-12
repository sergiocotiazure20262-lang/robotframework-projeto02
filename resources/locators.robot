*** Comments ***
Este é um arquivo de configuração para definir as variáveis
que serão utilizadas pelos testes do Robot Framework.

*** Variables ***

# Variáveis de URL
${URL_BASE}               https://cotiaws.github.io/projet-estoque/index.html
${URL_DASHBOARD}          https://cotiaws.github.io/projet-estoque/dashboard.html

#variáveis de campos de texto
${INPUT_NOMEUSUARIO}      xpath=//*[@id="usuario"]
${INPUT_SENHAUSUARIO}     xpath=//*[@id="senha"]
${INPUT_NOMEPRODUTO}      xpath=//*[@id="nome"]
${INPUT_QUANTIDADE}       xpath=//*[@id="quantidade"]
${INPUT_PESQUISA}         xpath=//*[@id="campoPesquisa"]

#variáveis de botões
${BUTTON_LOGIN}           xpath=//*[@id="loginForm"]/button
${BUTTON_CADASTRO}        xpath=//*[@id="produtoForm"]/button
${BUTTON_PESQUISA}        xpath=//*[@id="btnPesquisar"]

#variáveis de links de menu
${MENU_CADASTRO}          xpath=/html/body/nav/div/div/a[2]
${MENU_CONSULTA}          xpath=/html/body/nav/div/div/a[3]

#variáveis de mensagens do sistema
${MESSAGE_CADASTRO}       xpath=//*[@id="mensagem"]
${MESSAGE_ACESSO_NEGADO}  xpath=//*[@id="loginError"]

#variáveis de resultado de pesquisa
${RESULTADO_PESQUISA_1}   xpath=//*[@id="listaProdutos"]/li[1]/strong
${RESULTADO_PESQUISA_2}   xpath=//*[@id="listaProdutos"]/li[2]/strong

