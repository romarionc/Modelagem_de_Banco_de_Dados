-- Consulta 1: Listar todos os modelos ordenados pelo ano de lançamento (do mais novo para o mais antigo)
SELECT * FROM MODELO
ORDER BY Ano_Lancamento DESC;

-- Consulta 2: Listar apenas os veículos do tipo "Sedan" (usando o ID do tipo, que sabemos ser 1)
SELECT Nome_Modelo, Ano_Lancamento 
FROM MODELO 
WHERE ID_Tipo = 1;

-- Consulta 3: JOIN Simples - Mostrar nome do carro e nome do fabricante
SELECT m.Nome_Modelo, f.Nome_Fabricante
FROM MODELO m
JOIN FABRICANTE f ON m.ID_Fabricante = f.ID_Fabricante;

-- Consulta 4: JOIN Completo - Mostrar Modelo, Fabricante e Tipo (Relatório Geral)
SELECT m.Nome_Modelo, f.Nome_Fabricante, t.Nome_Tipo, m.Ano_Lancamento
FROM MODELO m
JOIN FABRICANTE f ON m.ID_Fabricante = f.ID_Fabricante
JOIN TIPO_CARRO t ON m.ID_Tipo = t.ID_Tipo;

-- Consulta 5: Contar quantos carros existem de cada fabricante (Agrupamento)
SELECT f.Nome_Fabricante, COUNT(m.ID_Modelo) as Total_Veiculos
FROM FABRICANTE f
JOIN MODELO m ON f.ID_Fabricante = m.ID_Fabricante
GROUP BY f.Nome_Fabricante;