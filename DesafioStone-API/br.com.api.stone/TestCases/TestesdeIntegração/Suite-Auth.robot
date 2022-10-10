***Settings***
Resource    ../../Resources/BaseURL.robot

Documentation  Implementação da Funcionalidade de Login

***Test Cases***
Caso de Teste 01: P - Validar Geração do Login com Sucesso
     [Tags]   autenticacao_sucesso
     Dado que é criado uma sessão de login
     Quando faço uma requisicao Post
     Então retorna status code de sucesso

Caso de Teste 02: P - Validar Login Invalido
     [Tags]   autenticacao_invalida
     Dado que é criado uma sessão de login
     Quando faço uma requisicao Post Invalida
     Então retorna status code de erro

