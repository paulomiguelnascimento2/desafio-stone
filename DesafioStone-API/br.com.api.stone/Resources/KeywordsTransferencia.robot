***Settings***
Resource     BaseURL.robot

Documentation    Implementação das keywords da API de Transferencia



***Keywords***

que é enviado uma request para realização de uma Transferencia
       create session         authApiStone2         ${base_url2}  

faço uma requisicao POST de Transferencia

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}



faço uma requisicao POST de Transferencia Sem Authorization

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}


faço uma requisicao POST de Transferencia Sem o Campo AccountId

       ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo Amount

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": ,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo approval_expired_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": ,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo batch_id

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": ,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo cancelled_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": ,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo cancelled_by

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": ,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo failed_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": ,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo failure_reason_code

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": ,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo failure_reason_description

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": ,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo fee

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": ,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo finished_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": ,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo has_similar_operation_recently

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": ,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo rejected_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": null,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": ,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo rejected_by

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": null,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": ,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo scheduled_to
    
      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": null,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": ,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}
faço uma requisicao POST de Transferencia Sem o Campo settled_at

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": null,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": ,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo status

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 1,"finished_at": null,"has_similar_operation_recently": null,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo target_account_code

      ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "","target_account_owner_name": "Leonardo Pereira","target_in_contacts": false}                    
      Log                         ${response.text}
      Set Test Variable           ${response}

faço uma requisicao POST de Transferencia Sem o Campo target_in_contacts

       ${HEADERS}=                create Dictionary               content-type=application/json          Authorization=Bearer ${token}
      Set Suite Variable         ${HEADERS}
      ${response}  Post Request    authApiStone2       /api/v1/dry_run/internal_transfers       headers=${headers} 
      ...           data={"account_id": "bccd3bf7-3369-4622-b769-71f93d66da87","amount": 1,"approval_expired_at": null,"approved_at": "2022-10-06T23:59:28Z","approved_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","batch_id": null,"cancelled_at": null,"cancelled_by": null,"created_at": "2022-10-06T23:59:28Z","created_by": "user:6324a4c8-6ae6-42f2-abd1-a1ea29b0cd15","description": "","failed_at": null,"failure_reason_code": null,"failure_reason_description": null,"fee": 0,"finished_at": null,"has_similar_operation_recently": false,"id": "53556e03-7b11-4ef1-a1aa-a5b0c175a05f","rejected_at": null,"rejected_by": null,"scheduled_to": null,"settled_at": null,"status": "APPROVED","target": {"account": {"account_code": "475384"},"entity": {"name": "Leonardo Pereira"}},"target_account_code": "475384","target_account_owner_name": "Leonardo Pereira","target_in_contacts": }                    
      Log                         ${response.text}
      Set Test Variable           ${response}

verifico o Contrato da API de Transferencia e o Status Code

      ${status_code}=     convert to string       ${response.status_code}
      should be equal     ${status_code}          201
      Validate Jsonschema From File     ${response.json()}     br.com.api.stone/Json/ContratoTransferencia.json



valido o Status Code de Sucesso


      ${status_code}=                convert to string        ${response.status_code}
      should be equal                ${status_code}                               201
      Should Be Equal As Strings     ${response.json()}[account_id]               bccd3bf7-3369-4622-b769-71f93d66da87
      Should Be Equal As Integers     ${response.json()}[amount]                  1
      Should Be Equal As Strings     ${response.json()}[approval_expired_at]     None
      Should Be Equal As Strings     ${response.json()}[approved_at]             None
      Should Be Equal As Strings     ${response.json()}[approved_at]             None

valido o Status Code de Erro e a Mensagem Sem o AccountId

   
      ${status_code}=                convert to string        ${response.status_code}
      should be equal                ${status_code}                               400
      Should Be Equal As Strings     ${response.json()}[validation_errors][0][error]              missing
      Should Be Equal As Strings     ${response.json()}[validation_errors][0][path]            ['account_id']

valido o Status Code de Erro e a Mensagem Sem o target_account_code


      ${status_code}=                convert to string        ${response.status_code}
      should be equal                ${status_code}                               400
      Should Be Equal As Strings     ${response.json()}[validation_errors][0][error]              missing
      Should Be Equal As Strings     ${response.json()}[validation_errors][0][path]            ['target', 'account', 'account_code']

valido o Status Code de Erro

  
      ${status_code}=                convert to string        ${response.status_code}
      should be equal                ${status_code}                               400
      Should Be Equal As Strings     ${response.json()}[type]            srn:error:validation
     
valido o Status Code de Erro Sem Autorização     

     
      ${status_code}=                convert to string        ${response.status_code}
      should be equal                ${status_code}                               401
      Should Be Equal As Strings     ${response.json()}[type]            srn:error:unauthenticated