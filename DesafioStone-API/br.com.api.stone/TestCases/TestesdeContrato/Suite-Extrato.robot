***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade de Extrato

***Test Cases***
Caso de Teste 01: P - Validar Extrato Com Sucesso
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço uma requisicao GET no Extrato
     Então verifico o Contrato da API de Extrato e o Status Code
