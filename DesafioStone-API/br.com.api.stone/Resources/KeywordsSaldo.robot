***Settings***
Resource     BaseURL.robot

Documentation    Implementação das keywords da API de Saldo



***Keywords***


que é enviado uma request para verificação do saldo
       create session         authApiStone2         ${base_url2}  

faço uma requisicao GET no Saldo

      ${headers}=             create dictionary          Authorization=Bearer ${token}
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/balance       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao GET no Saldo com autorização não permitida

      ${headers}=             create dictionary          Authorization=Bearer
      ${response}  get request    authApiStone2       /api/v1/accounts/bccd3bf7-3369-4622-b769-71f93d66da87/balance       headers=${headers}             
      Log                         ${response.text}
      Set Test Variable           ${response}
    

valido o status code de sucesso e o response da requisicao

  
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          200
      Dictionary Should Contain Item    ${response.json()}   balance              98
      Dictionary Should Contain Item    ${response.json()}   blocked_balance      0
      Dictionary Should Contain Item    ${response.json()}   scheduled_balance    0


verifico o Contrato da API de Saldo e o Status Code

     
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          200
      Validate Jsonschema From File     ${response.json()}     br.com.api.stone/Json/ContratoSaldo.json

valido o status code de não autorizada

      
      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          401
      Dictionary Should Contain Item    ${response.json()}     type     srn:error:unauthenticated


    
  
    