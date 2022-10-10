***Settings***
Resource    ../../Resources/BaseURL.robot

Test Setup        Efetuar Login

Documentation  Implementação da Funcionalidade Transferencia

***Test Cases***
Caso de Teste 01: P - Validar Transferencia Com Sucesso
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia
     Então valido o Status Code de Sucesso

Caso de Teste 02: P - Validar Transferencia - Sem Autorização
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem Authorization
     Então valido o Status Code de Erro Sem Autorização

Caso de Teste 03: P - Validar Transferencia - AccountId Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo AccountId
     Então valido o Status Code de Erro e a Mensagem Sem o AccountId

Caso de Teste 04: P - Validar Transferencia - Amount Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo Amount
     Então valido o Status Code de Erro

Caso de Teste 05: P - Validar Transferencia - approval_expired_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo approval_expired_at
     Então valido o Status Code de Erro

Caso de Teste 06: P - Validar Transferencia - batch_id Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo batch_id
     Então valido o Status Code de Erro

Caso de Teste 07: P - Validar Transferencia - cancelled_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo cancelled_at
     Então valido o Status Code de Erro

Caso de Teste 08: P - Validar Transferencia - cancelled_by Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo cancelled_by
     Então valido o Status Code de Erro

Caso de Teste 09: P - Validar Transferencia - failed_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo failed_at
     Então valido o Status Code de Erro

Caso de Teste 10: P - Validar Transferencia - failure_reason_code Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo failure_reason_code
     Então valido o Status Code de Erro

Caso de Teste 11: P - Validar Transferencia - failure_reason_description Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo failure_reason_description
     Então valido o Status Code de Erro

Caso de Teste 12: P - Validar Transferencia - fee Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo fee
     Então valido o Status Code de Erro

Caso de Teste 13: P - Validar Transferencia - finished_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo finished_at
     Então valido o Status Code de Erro

Caso de Teste 14: P - Validar Transferencia - has_similar_operation_recently Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo has_similar_operation_recently
     Então valido o Status Code de Erro

Caso de Teste 15: P - Validar Transferencia - rejected_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo rejected_at
     Então valido o Status Code de Erro

Caso de Teste 16: P - Validar Transferencia - rejected_by Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo rejected_by
     Então valido o Status Code de Erro

Caso de Teste 17: P - Validar Transferencia - scheduled_to Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo scheduled_to
     Então valido o Status Code de Erro 

Caso de Teste 18: P - Validar Transferencia - settled_at Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo settled_at
     Então valido o Status Code de Erro 

Caso de Teste 19: P - Validar Transferencia - target_account_code Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo target_account_code
     Então valido o Status Code de Erro e a Mensagem Sem o target_account_code


Caso de Teste 20: P - Validar Transferencia - target_in_contacts Não Informado
     [Tags]   validacao_saldo_contrato
     Dado que é enviado uma request para realização de uma Transferencia
     Quando faço uma requisicao POST de Transferencia Sem o Campo target_in_contacts
     Então valido o Status Code de Erro 



