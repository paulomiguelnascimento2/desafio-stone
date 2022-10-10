***Settings***
Resource     BaseURL.robot

Documentation    Implementação das keywords da API de Extrato



***Keywords***

que é enviado uma request para verificação do extrato
       create session         authApiStone2         ${base_url2}  

faço uma requisicao GET no Extrato

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params Limit


      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?limit =10       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params Before 

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?before=null      headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params After
        
      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?after=null      headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}



faço uma requisicao GET Extrato com autorização não permitida

      ${headers}=             create dictionary          Authorization=Bearer
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params start_datetime

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?start_datetime =2022-10-07T12:55:12Z       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params end_datetime
        
      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?end_datetime =2022-10-07T12:55:12Z       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}
faço um GET no Extrato Utilizando o Params type internal

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =internal       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type external

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =external       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type external_refund 

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =external_refund       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type payment

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =payment       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type payment_refund

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =payment_refund       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}


faço um GET no Extrato Utilizando o Params type balance_block

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =balance_block       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type card_payment

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =card_payment       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type salary_portability

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =salary_portability       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type salary_portability_refund

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =salary_portability_refund       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço um GET no Extrato Utilizando o Params type salary_portability_employer_refund 

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =salary_portability_employer_refund       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}


faço um GET no Extrato Utilizando o Params type instant_payment

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?type =instant_payment      headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}




faço um GET no Extrato Utilizando o Params start_datetime Invalido

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2         /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/statement?start_datetime =2022-10T12:55:12Z       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}


valido o status code de sucesso de Extrato

      
      ${status_code}=     convert to string       ${response.status_code}
      should be equal    ${status_code}          200
      Should Be Equal As Strings     ${response.json()}[cursor][after]                None  
      Should Be Equal As Strings     ${response.json()}[cursor][before]               None 
      Should Be Equal As Integers    ${response.json()}[cursor][limit]                25 
      Should Be Equal As Strings     ${response.json()}[data][0][account_id]          bccd3bf7-3369-4622-b769-71f93d66da87
      Should Be Equal As Strings     ${response.json()}[data][0][amount]              -279900
      Should Be Equal As Integers    ${response.json()}[data][0][balance_after]       98
      Should Be Equal As Integers    ${response.json()}[data][0][balance_before]      279998



verifico o Contrato da API de Extrato e o Status Code 

     
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          200
      Validate Jsonschema From File     ${response.json()}     desafio-stone/DesafioStone-API/br.com.api.stone/Json/ContratoExtrato.json
valido o status code de não autorizada do Extrato

    
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          401
      Dictionary Should Contain Item    ${response.json()}     type     srn:error:unauthenticated

valido o status code de Erro do Before

      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          400
      Dictionary Should Contain Item    ${response.json()}     path     before
      Dictionary Should Contain Item    ${response.json()}     type     srn:error:invalid_cursor


valido o status code de Erro do Params After

   
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          400
      Dictionary Should Contain Item    ${response.json()}     path     after
      Dictionary Should Contain Item    ${response.json()}     type     srn:error:invalid_cursor
    
  
    