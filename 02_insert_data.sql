-- 1. Inserindo dados na tabela FABRICANTE
INSERT INTO FABRICANTE (ID_Fabricante, Nome_Fabricante) VALUES (10, 'Toyota');
INSERT INTO FABRICANTE (ID_Fabricante, Nome_Fabricante) VALUES (20, 'Volkswagen');
INSERT INTO FABRICANTE (ID_Fabricante, Nome_Fabricante) VALUES (30, 'Ford');
INSERT INTO FABRICANTE (ID_Fabricante, Nome_Fabricante) VALUES (40, 'Honda');

-- 2. Inserindo dados na tabela TIPO_CARRO
INSERT INTO TIPO_CARRO (ID_Tipo, Nome_Tipo) VALUES (1, 'Sedan');
INSERT INTO TIPO_CARRO (ID_Tipo, Nome_Tipo) VALUES (2, 'Hatch');
INSERT INTO TIPO_CARRO (ID_Tipo, Nome_Tipo) VALUES (3, 'SUV');
INSERT INTO TIPO_CARRO (ID_Tipo, Nome_Tipo) VALUES (4, 'Picape');

-- 3. Inserindo dados na tabela MODELO
-- Note que usamos os IDs criados acima para manter a integridade
INSERT INTO MODELO (ID_Modelo, Nome_Modelo, Ano_Lancamento, ID_Fabricante, ID_Tipo) VALUES (101, 'Corolla', 2024, 10, 1);
INSERT INTO MODELO (ID_Modelo, Nome_Modelo, Ano_Lancamento, ID_Fabricante, ID_Tipo) VALUES (102, 'Gol', 2022, 20, 2);
INSERT INTO MODELO (ID_Modelo, Nome_Modelo, Ano_Lancamento, ID_Fabricante, ID_Tipo) VALUES (103, 'Hilux', 2023, 10, 4);
INSERT INTO MODELO (ID_Modelo, Nome_Modelo, Ano_Lancamento, ID_Fabricante, ID_Tipo) VALUES (104, 'Civic', 2021, 40, 1);
INSERT INTO MODELO (ID_Modelo, Nome_Modelo, Ano_Lancamento, ID_Fabricante, ID_Tipo) VALUES (105, 'EcoSport', 2019, 30, 3);