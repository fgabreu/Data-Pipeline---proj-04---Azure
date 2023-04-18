# Lab-04---Azure
Projeto 04 Big Data - Azure 

Projeto IPAV

1.0 - REQUISITOS DO CLIENTE

O instituto Pocco de Artes Visuais(IPAV) tem como objetivo fomentar iniciativas culturais no Brasil. Eles contrataram a Blueshift para ajudar no mapeamento de instituições, eventos e projetos. no país. A presidente do instituto, Stefani Germanotta, quer visualizar em um dashboard todas as instituições culturais do Brasil separadas por estados e região e os principais eventos em uma linha do tempo.
O Instituto Pocco deu total liberdade para o time Blueshift desenhar a arquitetura de todo o projeto, desde de que atenda as necessidades citadas, mas por uma questão de orçamento o projeto só poderá ser realizado em Azure e utilizando o Databricks, Data Factory, Azure SQL e Azure Storage.

As informações sobre as instituições de artes, eventos e projetos serão extraídos da API do MuseusBr, sistema criado em 2017 pelo governo federal. O sistema possui uma documentação no GitHub sobre como consumir os dados armazenados. As informações disponibilizadas na API vem através de inserção manual das próprias instituições culturais, então não estão padronizadas. Será necessário realizar um trabalho de higienização e tratamento dessas informações antes de exibi-las no dashboard da presidente Germanotta. 

- API do MuseusBr: http://docs.mapasculturais.org/apidoc/index.html?doctype=api
- Documentação no GitHub: https://github.com/hacklabr/mapasculturais/blob/master/documentation/docs/mc_config_api.md

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

2.0 - SOLUÇÃO PROPOSTA

Arquitetura Proposta:

![Arquitetura](https://user-images.githubusercontent.com/57818977/220213678-29211644-d726-41f5-8fa8-b4228a8a7893.png)

To do:
- Desenvolver um mecanismo para extrair as informações da API do MuseusBr e armazena-las no Azure Storage;
- Fazer o tratamento e higienização dos dados, você possuí autonomia para escolher a melhor ferramenta ou plataforma para esse processo;
- Armazenar os dados trados e higienizados em uma tabela do Azure SQL;
- Construir um dashboard que atenda as necessidades apontadas pelo Instituto Pocco de Artes Visuais;
- Construir a documentação de todo o projeto.


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

3.0 - RESULTADO DO PROJETO

3.1 - Resultado Final Pipeline no Azure Datafactory (ETL feito no Databricks e populando as tabelas no AzureSQL):

![imagem1](https://user-images.githubusercontent.com/57818977/220213941-6c137ae0-e0c2-4541-9b0f-b94478a65488.png)

3.2 - Dashboard em Power BI (conforme necessidades Especificadas)

 - Dashboard com a informação de todas as instituições culturais do Brasil, podendo ser filtradas por Região, Estados e Cidades:

![museus](https://user-images.githubusercontent.com/57818977/220329930-3afd9b7b-5a13-437a-88cf-bf95e2088059.png)

 - Dashboard contendo a informação dos principais eventos em uma linha do tempo:

![eventos](https://user-images.githubusercontent.com/57818977/220330030-bd3d823a-f10e-47e2-b491-c0d6c07c3eec.png)


