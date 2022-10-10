# Automation-Mobile

Esse é um repositório que contém os testes de Frontend do aplicativo sunflower aplicativo esse que tem como objetivo de adicionar plantas ao seu jardim, é possivel também verificar as plantas adicionadas ao seu jardim.

# Estrutura do Projeto

O projeto foi estruturado conforme descrito abaixo seguindo a ordem das pastas

- **Pasta app* - Contém o arquivo .apk que foi aferido a qualidade.

- **PageObjects* - Esta pasta contém o arquivo "sunflower_pages_objects.py" arquivo esse que contém os elementos utilizados na relização do testes, a criação desse arquivo facilita na manutenção dos testes, visto que caso ocorra alteração de algum elemento se faz necessário o ajuste somente nesse arquivo.

- **Resources* - Esta pasta contém os arquivos "BaseURL.robot", "BDD.robot", "KeywordsAuth.robot", "KeywordsExtrato.robot", "KeywordSaldo.robot", "KeywordsTransferencia.robot" 

    - Base.robot - Contém os scripts necessários que serão comumente usandos no projeto
    - BDD.robot - Contém a descrição para a utilização do BDD no projeto
    - KeywordsSunflower.robot - Contém as keywords implementadas do apk sunflower
    

# Execução dos Testes

- Execução de instalação do requirements está na seção **Teste de Comando**
- Para execução dos testes se faz necessário navegar nas estruturas das pastas até a pasta "Tests" deve seguir o projeto navegando da seguinte forma "desafio-stone>DesafioStone-Mobile>br.com.mobile.stone>Tests" o comando para execução está na seção **Teste de Comando** execução do projeto.

`Teste de Comando`

    - Execução do requirements: pip install -r requirements.txt

    - Execução do Projeto: robot -d ./logs  .\desafio-stone\DesafioStone-Mobile\br.com.mobile.stone\Tests\

# Tecnologias Utilizadas 

    - Instação do Python versão disponivel em https://www.python.org/downloads/
    - Instalação do VsCode como IDE de Desenvolvimento disponivel em https://code.visualstudio.com/download
    - Instalação do robotframework que se deve ser realizada no terminal do seu computador utilizando o comando pip install robotframework
    - Instalação da library para o desenvolvimento dos testes utilizar o comando pip install appiumlibrary
    - Instalação do JDK 8 disponivel em https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html 
    - Configuração do Java_home nas suas variaves de ambientes C:\Program Files\Java\Pasta_do_seu_comoutador e incluir no path "%JAVA_HOME%\bin".
    - Instalação do Android Studio para Emular o APK (Emulador aberto)
    - Configuração do Android_Home C:\Users\Usuario\AppData\Local\Android\Sdk
    - Instalação do NodeJs disponivel em https://nodejs.org/pt-br/ 
    - instalação do AppiumDesktop Disponivel em http://appium.io/ (Servidor deve está em execução)
    - Instalação do AppiumInspector disponivel em http://appium.io/ (configurar Desired Capabilities)

# Considerações Finais

    - Devido ao apk não ter muitas funcionalidades não foi possivel realizar uma cobertura maior de testes visto que o mesmo não proporciona uma maior quantidade de testes
