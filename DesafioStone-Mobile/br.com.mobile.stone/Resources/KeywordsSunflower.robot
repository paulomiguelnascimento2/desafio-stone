***Settings***
Resource     ../Resources/Base.robot

Documentation    Implementação das keywords da API Auth

***Keywords***

que esteja na pagina sunflower

        Wait Until Element Is Visible    ${button_add_plant}     ${timeout}

que a planta Avocado esteja adicionada no jardim

      que esteja na pagina sunflower
      clicar em Add Plant
      E selecionar Avocado
      E clicar no icone de +
      valido mensagem de sucesso e que foi adicionado no mygarden a planta Avocado
        
clicar em Add Plant

       Click Element    ${button_add_plant}

visualizar a pagina do mygarden

         Wait Until Element Is Visible    ${button_add_plant}     ${timeout}

tentar adicionar a planta novamente

        Wait Until Element Is Visible   //android.widget.LinearLayout[@content-desc="Plant list"]/android.widget.TextView    ${timeout}
        Click Element                   //android.widget.LinearLayout[@content-desc="Plant list"]/android.widget.TextView 
        Wait Until Element Is Visible   ${buttonAvocado}     ${timeout}
        Click Element                   ${buttonAvocado} 
E selecionar Avocado

        Wait Until Element Is Visible  ${buttonAvocado}     ${timeout}
        Click Element                  ${buttonAvocado} 
 
E selecionar Apple
        
          Wait Until Element Is Visible  ${buttonapple}     ${timeout}
          Click Element                  ${buttonapple} 

E selecionar Beet

            Wait Until Element Is Visible  ${buttonbeet}     ${timeout}
            Click Element                  ${buttonbeet} 

       
E clicar no icone de +

           Wait Until Element Is Visible   ${buttonadd}     ${timeout}
           Click Element                   ${buttonadd}
           
valido mensagem de sucesso e que foi adicionado no mygarden a planta Apple 


           Wait Until Element Is Visible       ${element_mensagem}    ${timeout}
           Element Should Contain Text         ${element_mensagem}    ${mensagemSucessoPlantaAdicionada}
           Wait Until Element Is Visible       ${button_voltar}       ${timeout}
           Click Element                       ${button_voltar}
           Wait Until Element Is Visible       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView   ${timeout} 
           Click Element                       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView
           Element Should Contain Text          ${element_planta}     ${nomePlanta}         
           Element Should Contain Text         ${element_informacao_planted}   ${informacao_planted}
           Element Should Contain Text         ${element_informacao_date}	   ${date_plant}

  


valido mensagem de sucesso e que foi adicionado no mygarden a planta Avocado

           Wait Until Element Is Visible       ${element_mensagem}    ${timeout}
           Element Should Contain Text         ${element_mensagem}    ${mensagemSucessoPlantaAdicionada}
           Wait Until Element Is Visible       ${button_voltar}       ${timeout}
           Click Element                       ${button_voltar}
           Wait Until Element Is Visible       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView   ${timeout} 
           Click Element                       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView
           Element Should Contain Text         ${element_planta}       ${informacao_planted_Avocado}  
           Element Should Contain Text         ${element_informacao_planted}   ${informacao_planted}
           Element Should Contain Text         ${element_informacao_date}	   ${date_plant}


valido mensagem de sucesso e que foi adicionado no mygarden a planta Beet


           Wait Until Element Is Visible       ${element_mensagem}    ${timeout}
           Element Should Contain Text         ${element_mensagem}    ${mensagemSucessoPlantaAdicionada}
           Wait Until Element Is Visible       ${button_voltar}       ${timeout}
           Click Element                       ${button_voltar}
           Wait Until Element Is Visible       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView   ${timeout} 
           Click Element                       //android.widget.LinearLayout[@content-desc="My garden"]/android.widget.TextView
           Element Should Contain Text         ${element_planta}       ${informacao_planted_Beet}  
           Element Should Contain Text         ${element_informacao_planted}   ${informacao_planted}
           Element Should Contain Text         ${element_informacao_date}	   ${date_plant}

valido mensagem de jardim vazio

            Wait Until Page Contains Element       ${mensagem_tela_principal}      ${timeout}
            Element Should Contain Text            ${mensagem_tela_principal}       Your garden is empty

valido que não é possivel adiciona-la
            
            Wait Until Page Contains Element   ${gallery_nav}   ${timeout}
            Page Should Not Contain Element    ${buttonadd}     ${timeout}
         
        
            

                


           

          