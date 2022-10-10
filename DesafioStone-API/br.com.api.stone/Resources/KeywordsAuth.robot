***Settings***
Resource     BaseURL.robot

Documentation    Implementação das keywords da API Auth



***Keywords***


que é criado uma sessão de login

    create session         authApiStone         ${base_url} 


faço uma requisicao Post

       ${data}=         create dictionary     client_id=admin-cli   username=desafioqastone@gmail.com   password=desafioqa   grant_type=password  
       ${HEADERS}=      create dictionary       Content-Type=application/x-www-form-urlencoded        disable_warnings=True
       Set Suite Variable    ${HEADERS}
       ${response}  Post Request   authApiStone   /auth/realms/stone_account/protocol/openid-connect/token   data=${data}    headers=${HEADERS}      
       Log                         ${response.text}
       Set Test Variable           ${response}


faço uma requisicao Post Invalida

       ${data}=         create dictionary     client_id=admin-clii   username=desafioqastone@gmail.com   password=desafioqa   grant_type=password  
       ${HEADERS}=      create dictionary       Content-Type=application/x-www-form-urlencoded        disable_warnings=True
       Set Suite Variable    ${HEADERS}
       ${response}  Post Request   authApiStone   /auth/realms/stone_account/protocol/openid-connect/token   data=${data}    headers=${HEADERS}      
       Log                         ${response.text}
       Set Test Variable           ${response}



retorna status code de sucesso

     
     ${status_code}=     convert to string       ${response.status_code}
     should be equal     ${status_code}          200
     ${token}=    Collections.Get From Dictionary    ${response.json()}    access_token
     Set Suite Variable    ${token}

retorna status code de erro

     
     ${status_code}=     convert to string       ${response.status_code}
     should be equal     ${status_code}          400
     Should Be Equal     ${response.json()}[error]      unauthorized_client
     Should Be Equal     ${response.json()}[error_description]      INVALID_CREDENTIALS: Invalid client credentials



Efetuar Login

       create session         authApiStone         ${base_url} 
       ${data}=         create dictionary     client_id=admin-cli   username=desafioqastone@gmail.com   password=desafioqa   grant_type=password  
       ${HEADERS}=      create dictionary       Content-Type=application/x-www-form-urlencoded        disable_warnings=True
       Set Suite Variable    ${HEADERS}
       ${response}  Post Request   authApiStone   /auth/realms/stone_account/protocol/openid-connect/token   data=${data}    headers=${HEADERS}      
       Log                         ${response.text}
       Set Test Variable           ${response}
       ${status_code}=     convert to string       ${response.status_code}
       should be equal     ${status_code}          200
       ${token}=    Collections.Get From Dictionary    ${response.json()}    access_token
       Set Suite Variable    ${token}