-- Criação da tabela FABRICANTE
CREATE TABLE FABRICANTE (
    ID_Fabricante INT PRIMARY KEY,
    Nome_Fabricante VARCHAR(100) NOT NULL
);

-- Criação da tabela TIPO_CARRO
CREATE TABLE TIPO_CARRO (
    ID_Tipo INT PRIMARY KEY,
    Nome_Tipo VARCHAR(50) NOT NULL
);

-- Criação da tabela MODELO (com as Chaves Estrangeiras)
CREATE TABLE MODELO (
    ID_Modelo INT PRIMARY KEY,
    Nome_Modelo VARCHAR(100) NOT NULL,
    Ano_Lancamento INT NOT NULL,
    ID_Fabricante INT NOT NULL,
    ID_Tipo INT NOT NULL,
    CONSTRAINT FK_Fabricante FOREIGN KEY (ID_Fabricante) REFERENCES FABRICANTE(ID_Fabricante),
    CONSTRAINT FK_Tipo FOREIGN KEY (ID_Tipo) REFERENCES TIPO_CARRO(ID_Tipo)
);