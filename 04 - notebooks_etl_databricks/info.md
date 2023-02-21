Neste projeto foi utilizado o Azure Databricks para a realização do tratamento e Carga dos dados.
Conforme as regras de negócio, foram feitos 2 notebooks, sendo um contendo a informação das instituições, e o outro contendo informações dos eventos.
Ambos realizam a extração dos dados que estão armazenados no Blob Storage, na qual foram feitas a limpeza e transformações aqui no Databricks, e no final realizam a carga dos dados
no AzureSQL, da forma overwrite.
