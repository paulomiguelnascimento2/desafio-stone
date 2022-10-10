***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade Extrato

***Test Cases***
Caso de Teste 01: P - Validar Extrato Com Sucesso
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço uma requisicao GET no Extrato
     Então valido o status code de sucesso de Extrato

Caso de Teste 02: P - Validação de Extrato Não Permitida
     [Tags]   validacao_saldo_não_permitida
     Dado que é enviado uma request para verificação do extrato
     Quando faço uma requisicao GET Extrato com autorização não permitida
     Então valido o status code de não autorizada do Extrato

Caso de Teste 03: P - Validar Extrato Informado O Parametro Limit
     [Tags]   validacao_extrato_sucesso_params_limit
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params Limit    
     Então valido o status code de sucesso de Extrato

Caso de Teste 04: P - Validar Extrato Informado O Parametro Before
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params Before    
     Então valido o status code de Erro do Before 

Caso de Teste 05: P - Validar Extrato Informado After
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params After    
     Então valido o status code de Erro do Params After

Caso de Teste 06: P - Validar Extrato Informado O Parametro Start_DateTime
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params start_datetime    
     Então valido o status code de sucesso de Extrato

Caso de Teste 07: P - Validar Extrato Informado O Parametro end_datetime 
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params end_datetime    
     Então valido o status code de sucesso de Extrato

Caso de Teste 08: P - Validar Extrato Informado O Type internal
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type internal   
     Então valido o status code de sucesso de Extrato

Caso de Teste 09: P - Validar Extrato Informado O Type external
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type external   
     Então valido o status code de sucesso de Extrato

Caso de Teste 10: P - Validar Extrato Informado O Type external_refund
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type external_refund   
     Então valido o status code de sucesso de Extrato

Caso de Teste 11: P - Validar Extrato Informado O Type payment
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type payment   
     Então valido o status code de sucesso de Extrato

Caso de Teste 12: P - Validar Extrato Informado O Type payment_refund
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type payment_refund   
     Então valido o status code de sucesso de Extrato

Caso de Teste 13: P - Validar Extrato Informado O Type balance_block
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type balance_block   
     Então valido o status code de sucesso de Extrato

Caso de Teste 14: P - Validar Extrato Informado O Type card_payment
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type card_payment   
     Então valido o status code de sucesso de Extrato

Caso de Teste 15: P - Validar Extrato Informado O Type salary_portability
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type salary_portability   
     Então valido o status code de sucesso de Extrato

Caso de Teste 16: P - Validar Extrato Informado O Type salary_portability_refund
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type salary_portability_refund   
     Então valido o status code de sucesso de Extrato

Caso de Teste 17: P - Validar Extrato Informado O Type salary_portability_employer_refund 
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type salary_portability_employer_refund    
     Então valido o status code de sucesso de Extrato

Caso de Teste 18: P - Validar Extrato Informado O Type instant_payment 
     [Tags]   validacao_extrato_sucesso
     Dado que é enviado uma request para verificação do extrato
     Quando faço um GET no Extrato Utilizando o Params type instant_payment    
     Então valido o status code de sucesso de Extrato






