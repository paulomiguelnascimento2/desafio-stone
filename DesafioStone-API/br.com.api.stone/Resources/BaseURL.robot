*** Settings ***
Resource            BDD.robot
Resource            KeywordsAuth.robot
Resource            KeywordsExtrato.robot
Resource            KeywordsSaldo.robot
Resource            KeywordsTransferencia.robot


Library             RequestsLibrary
Library             Collections
Library             OperatingSystem
Library             JsonValidator


**Variables***

${base_url}             https://login.sandbox.stone.com.br
${base_url2}            https://sandbox-api.openbank.stone.com.br