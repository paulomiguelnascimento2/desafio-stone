# Automation-API

Esse é um repositório que contém os testes de API em ambiente de sandbox, esses testes visam aferir a qualidade dos endpoints de saldo , extrato e simulação de transferência, para isso é necessario se autenticar na API de Auth onde a mesma gera um acess_token que expira em 2700 sendo necessário gerar um novo token, caso o mesmo expire. 

# Estrutura do Projeto

O projeto foi estruturado conforme descrito abaixo seguindo a ordem das pastas

- **Pasta Json** - Esta pasta contém os arquivos Json para validação dos contratos da Apis sendo exibindo nelas os arquivos "ContratoExtrato.json", "ContratoSaldo.json", "ContratoTransferencia.json" 

- **Resources** - Esta pasta contém os arquivos "BaseURL.robot", "BDD.robot", "KeywordsAuth.robot", "KeywordsExtrato.robot", "KeywordSaldo.robot", "KeywordsTransferencia.robot" 

    - BaseURL.robot - Contém os scripts necessários que serão comumente usandos no projeto
    - BDD.robot - Contém a descrição para a utilização do BDD no projeto
    - KeywordsAuth.robot - Contém as keywords do endpoint de Auth
    - KeywordsExtrato.robot - Contém as keywords do endpoint de extrato
    - KeywordSaldo.robot - Contém as keywords do endpoint de saldo
    - KeywordsTransferencia.robot - Contém as keywords do endpoint de transferencia

# Execução dos Testes

- Execução de instalação do requirements está na seção **Teste de Comando**
- Para execução dos testes se faz necessário navegar nas estruturas das pastas até a pasta "TestCases" deve seguir o projeto navegando da seguinte forma "desafio-stone>DesafioStone-API>br.com.api.stone>TestCases" o comando para execução está na seção **Teste de Comando** execução do projeto.

`Teste de Comando`

    - Execução do requirements: pip install -r requirements.txt

    - Execução do Projeto: robot -d ./logs  .\desafio-stone\DesafioStone-API\br.com.api.stone\TestCases

# Tecnologias Utilizadas 

    - Instação do Python versão disponivel em https://www.python.org/downloads/
    - Instalação do VsCode como IDE de Desenvolvimento disponivel em https://code.visualstudio.com/download
    - Instalação do robotframework que se deve ser realizada no terminal do seu computador utilizando o comando pip install robotframework
    - Instalação das librarys para o desenvolvimento dos testes utilizar o comando pip install requests e install robotframework-jsonvalidator

# Bugs Encontrados

    - Foi verificado na documentação da API que na API de extrato a mesma possui alguns query params porém foi notado que o GET utilizando esses filtros não funcionam corretamente os erros de cada um são melhores descritos abaixo:

        - Filtro Limit - Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado
        - Filtro before -  Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado
        - Filtro after -  Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado
        - Filtro start_datetime - Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado, e também não efetua validação caso seja         informada datas com valores incorretos
        - Filtro end_datetime  - Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado, e também não efetua validação caso seja           informada datas com valores incorretos
        - Filtro type  - Ao utilizar esse parametro a API exibe o response sem está de Acordo com o que foi filtrado podem ser pesquisados pelos filtros "internal",           "external", "external_refund, payment", "payment_refund", "balance_block", "card_payment", "salary_portability", "salary_portability_refund",                           "salary_portability_employer_refund" e "instant_payment" onde deveriam filtrar e exibir no response de acordo com o Filtro Exemplo caso passasse "internal" API         deveria retornar somente os internal porém não é o que está ocorrendo. Foram Criados testes para as situações para uma maior cobertura porém se faz necessário         o ajuste.

    - Na API de Transferencia ao enviar a request e em seguida enviar novamente API apresenta erro 401 porém o token ainda não está expirado dessa forma esse erro não     deveria ocorrer.

    - Na API de Transferencia ao informar algum valor inválido ou não informar API apresenta validação em alguns campos mais ao tentar executar novamente o mesmo           apresenta erro 401

    - Na API de transferencia não possui todas as validações necessárias de todos os campos, sendo necessário revisar o desenvolvimento de algumas validações bem como     a criação dos testes.


# Considerações Finais

    - O projeto foi estruturado de acordo com sua necessidade podendo ser melhorado porém devido ao tempo para entrega o mesmo não foi melhorado.
    - Algumas kws poderiam ser reaproveitadas para uma melhor prática de desenvolvimento.
    - O teste de contrato realizado na API de Transferencia encontra-se com erro no jsonschema porém esse teste já havia passado o mesmo encontra-se com erro e devido     ao tempo não foi possivel uma melhor analise do que pode ter ocorrido.
