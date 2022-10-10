***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade de Transferencia

***Test Cases***
Caso de Teste 01: P - Validar Transferencia Com Sucesso
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia
     Então verifico o Contrato da API de Transferencia e o Status Code


