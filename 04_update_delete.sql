-- === COMANDOS DE UPDATE (Atualização) ===

-- 1. Correção: Atualizar o ano de lançamento do Civic para 2022
UPDATE MODELO 
SET Ano_Lancamento = 2022 
WHERE ID_Modelo = 104;

-- 2. Alteração: Mudar o nome do fabricante "Volkswagen" para "VW" (abreviação)
UPDATE FABRICANTE 
SET Nome_Fabricante = 'VW' 
WHERE ID_Fabricante = 20;

-- 3. Correção em Massa: Aumentar em 1 ano o lançamento de todos os carros da Toyota (ID 10)
UPDATE MODELO 
SET Ano_Lancamento = Ano_Lancamento + 1 
WHERE ID_Fabricante = 10;


-- === COMANDOS DE DELETE (Exclusão) ===

-- 1. Excluir um modelo específico (EcoSport saiu de linha)
DELETE FROM MODELO 
WHERE ID_Modelo = 105;

-- 2. Excluir modelos muito antigos (Ex: anteriores a 2010 - aqui nenhum será afetado, mas o comando é válido)
DELETE FROM MODELO 
WHERE Ano_Lancamento < 2010;

-- 3. Excluir um Tipo de Carro que não está sendo usado (Ex: Excluir 'Picape' APÓS deletar a Hilux)
-- Nota: Se tentar deletar um tipo que tem carros vinculados, o banco bloqueará por segurança (FK).
-- Primeiro deletamos a Hilux:
DELETE FROM MODELO WHERE ID_Modelo = 103;
-- Agora podemos deletar o tipo Picape:
DELETE FROM TIPO_CARRO WHERE ID_Tipo = 4;