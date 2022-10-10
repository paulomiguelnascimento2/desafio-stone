***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade de Saldo

***Test Cases***
Caso de Teste 01: P - Validar Saldo Com Sucesso
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para verificação do saldo
     Quando faço uma requisicao GET no Saldo
     Então verifico o Contrato da API de Saldo e o Status Code


