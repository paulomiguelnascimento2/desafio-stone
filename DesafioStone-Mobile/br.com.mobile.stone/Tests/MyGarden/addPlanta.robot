*** Settings ***
Resource    ../../Resources/Base.robot

Test Setup       Open Android Test App
Test Teardown    Close App

*** Test Cases ***
Caso de Teste 01: P - Adicionar Planta Apple
  [Tags]  AdicionarPlanta_Apple
      Dado que esteja na pagina sunflower
      Quando clicar em Add Plant
      E selecionar Apple
      E clicar no icone de +
      Então valido mensagem de sucesso e que foi adicionado no mygarden a planta Apple

Caso de Teste 02: P - Adicionar Planta Avocado
  [Tags]  AdicionarPlanta_Avocado
      Dado que esteja na pagina sunflower
      Quando clicar em Add Plant
      E selecionar Avocado
      E clicar no icone de +
      Então valido mensagem de sucesso e que foi adicionado no mygarden a planta Avocado

Caso de Teste 03: P - Adicionar Planta Beet
  [Tags]  AdicionarPlanta_Beet
      Dado que esteja na pagina sunflower
      Quando clicar em Add Plant
      E selecionar Beet
      E clicar no icone de +
      Então valido mensagem de sucesso e que foi adicionado no mygarden a planta Beet

Caso de Teste 04: P - Validar Jardim Vazio

      [Tags]  ValidarJardimVazio
      Dado que esteja na pagina sunflower
      Quando visualizar a pagina do mygarden
      Então valido mensagem de jardim vazio

Caso de Teste 05: P - Validar Que Não é Possivel Adicionar Duas Vezes a Mesma Planta

      [Tags]  NaoePossivelAdicionaraMesmaPlanta
      Dado que a planta Avocado esteja adicionada no jardim
      Quando tentar adicionar a planta novamente
      Então valido que não é possivel adiciona-la
