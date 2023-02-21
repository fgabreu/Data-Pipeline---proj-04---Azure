-- 1) CRIA플O DO SCHEMA STAGE E DW
CREATE SCHEMA STAGE_felipe_abreu_lab04
GO

CREATE SCHEMA DW_felipe_abreu_lab04
GO


-- 2) CRIA플O DAS TABELAS STAGE MUSEU E EVENTO
CREATE TABLE STAGE_felipe_abreu_lab04.museu(
		Id_Museu INT PRIMARY KEY NOT NULL,
		Nome_Museu VARCHAR(500) NULL,
		Bairro VARCHAR(300) NULL,
		CEP VARCHAR(50) NULL,
		Estado VARCHAR(50) NULL,
		Regiao VARCHAR(50) NULL,
		Municipio VARCHAR(100)NULL,
		Logradouro VARCHAR(500)NULL,
		Latitude FLOAT NULL,
		Longitude FLOAT NULL,
		Acessibilidade VARCHAR(50) NULL,
		Esfera VARCHAR(300) NULL,
		Esfera_Tipo VARCHAR(300) NULL,
		Descricao VARCHAR(500) NULL,
		Instagram VARCHAR(300) NULL,
		Site VARCHAR (300) NULL,
		Telefone VARCHAR(50) NULL
		);


CREATE TABLE STAGE_felipe_abreu_lab04.evento(
		Id_Evento INT PRIMARY KEY NOT NULL,
		Evento VARCHAR(500) NULL,
		Data_Criacao DATE NULL,
		Classificacao VARCHAR(200) NULL,
		Descricao VARCHAR(MAX) NULL,
		Traducao_Libras VARCHAR(50) NULL,
		Site VARCHAR(300) NULL,
		Id_Museu INT NOT NULL,
		Informacao VARCHAR(800) NULL,
		Data_Inicio DATE NULL,
		Data_Termino DATE NULL,
		Horario VARCHAR(50) NULL,
        Frequencia VARCHAR(50) NULL,
        Preco VARCHAR(300) NULL,
		Duracao FLOAT NULL
		);



-- 3) CRIA플O DAS TABELAS DW MUSEU E EVENTO
CREATE TABLE DW_felipe_abreu_lab04.museu(
		Id_Museu INT PRIMARY KEY NOT NULL,
		Nome_Museu VARCHAR(500) NULL,
		Bairro VARCHAR(300) NULL,
		CEP VARCHAR(50) NULL,
		Estado VARCHAR(50) NULL,
		Regiao VARCHAR(50) NULL,
		Municipio VARCHAR(100)NULL,
		Logradouro VARCHAR(500)NULL,
		Latitude FLOAT NULL,
		Longitude FLOAT NULL,
		Acessibilidade VARCHAR(50) NULL,
		Esfera VARCHAR(300) NULL,
		Esfera_Tipo VARCHAR(300) NULL,
		Descricao VARCHAR(500) NULL,
		Instagram VARCHAR(300) NULL,
		Site VARCHAR (300) NULL,
		Telefone VARCHAR(50) NULL
		);


CREATE TABLE DW_felipe_abreu_lab04.evento(
		Id_Evento INT PRIMARY KEY NOT NULL,
		Evento VARCHAR(500) NULL,
		Data_Criacao DATE NULL,
		Classificacao VARCHAR(200) NULL,
		Descricao VARCHAR(MAX) NULL,
		Traducao_Libras VARCHAR(50) NULL,
		Site VARCHAR(300) NULL,
		Id_Museu INT NOT NULL,
		Informacao VARCHAR(800) NULL,
		Data_Inicio DATE NULL,
		Data_Termino DATE NULL,
		Horario VARCHAR(50) NULL,
        Frequencia VARCHAR(50) NULL,
        Preco VARCHAR(300) NULL,
		Duracao FLOAT NULL
		);


-- 4) CRIA플O DA STORAGE PROCEDURE
CREATE PROCEDURE DW_felipe_abreu_lab04.procedure_STAGE_to_DW
AS
BEGIN
--limpando as tabelas DW
TRUNCATE TABLE DW_felipe_abreu_lab04.museu 
TRUNCATE TABLE DW_felipe_abreu_lab04.evento
--Inserindo os dados das tabelas STATE p/ tabelas DW
INSERT INTO DW_felipe_abreu_lab04.museu(
	Id_Museu,
	Nome_Museu,
	Bairro,
	CEP,
	Estado,
	Regiao,
	Municipio,
	Logradouro,
	Latitude,
	Longitude,
	Acessibilidade,
	Esfera,
	Esfera_Tipo,
	Descricao,
	Instagram,
	Site,
	Telefone)

SELECT
	Id_Museu,
	Nome_Museu,
	Bairro,
	CEP,
	Estado,
	Regiao,
	Municipio,
	Logradouro,
	Latitude,
	Longitude,
	Acessibilidade,
	Esfera,
	Esfera_Tipo,
	Descricao,
	Instagram,
	Site,
	Telefone
FROM STAGE_felipe_abreu_lab04.museu


INSERT INTO DW_felipe_abreu_lab04.evento(
	Id_Evento,
	Evento,
	Data_Criacao,
	Classificacao,
	Descricao,
	Traducao_Libras,
	Site,
	Id_Museu,
	Informacao,
	Data_Inicio,
	Data_Termino,
	Horario,
	Frequencia,
    Preco,
	Duracao)

SELECT
	Id_Evento,
	Evento,
	Data_Criacao,
	Classificacao,
	Descricao,
	Traducao_Libras,
	Site,
	Id_Museu,
	Informacao,
	Data_Inicio,
	Data_Termino,
	Horario,
	Frequencia,
    Preco,
	Duracao
FROM STAGE_felipe_abreu_lab04.evento

--limpando as tabelas Stage
TRUNCATE TABLE STAGE_felipe_abreu_lab04.museu 
TRUNCATE TABLE STAGE_felipe_abreu_lab04.evento
END