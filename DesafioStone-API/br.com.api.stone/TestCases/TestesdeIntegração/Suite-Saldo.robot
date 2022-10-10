***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade Saldo

***Test Cases***
Caso de Teste 01: P - Validar Saldo Com Sucesso
     [Tags]   validacao_saldo_sucesso
     Dado que é enviado uma request para verificação do saldo
     Quando faço uma requisicao GET no Saldo
     Então valido o status code de sucesso e o response da requisicao

Caso de Teste 02: P - Validação de Saldo Não Permitida
     [Tags]   validacao_saldo_não_permitida
     Dado que é enviado uma request para verificação do saldo
     Quando faço uma requisicao GET no Saldo com autorização não permitida
     Então valido o status code de não autorizada

