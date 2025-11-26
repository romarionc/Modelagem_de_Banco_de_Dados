# Projeto AutoClass - Classificação Veicular 🚗

![Status do Projeto: Concluído](https://img.shields.io/badge/status-concluído-green)
![Linguagem](https://img.shields.io/badge/linguagem-SQL-blue)
![Tecnologia](https://img.shields.io/badge/tecnologia-Banco%20de%20Dados-orange)
![License: MIT](https://img.shields.io/badge/license-MIT-informational)

> Projeto de modelagem e implementação de um banco de dados relacional para catalogação de veículos, focado em **Normalização (3FN)**, integridade de dados e consultas estratégicas.

🔗 **[Acesse o repositório completo aqui!](https://github.com/romarionc/Modelagem_de_Banco_de_Dados)**

## 🎯 Objetivo

O principal desafio deste projeto foi transformar um cenário de negócio (minimundo) em uma estrutura de dados robusta, atendendo aos seguintes requisitos:

* Modelagem lógica completa e aplicação das **Formas Normais (até a 3FN)**.
* Garantia de **Integridade Referencial** através de Chaves Estrangeiras (FK).
* Criação de scripts SQL otimizados para definição (DDL), manipulação (DML) e consulta (DQL) de dados.

## ✨ Estrutura e Arquitetura

Para garantir a organização e a escalabilidade do banco de dados, o projeto foi dividido em sistemas centrais:

### 1. 📐 Modelagem Relacional (Esquema em Estrela)

A estrutura foi desenhada para eliminar redundâncias e facilitar a manutenção:
* **Tabelas Dimensão:** `FABRICANTE` e `TIPO_CARRO` armazenam os dados cadastrais únicos.
* **Tabela Fato:** `MODELO` centraliza as informações, conectando-se às outras tabelas via `Foreign Keys`.
* Isso garante que, se o nome de um fabricante mudar, ele é atualizado automaticamente para todos os modelos vinculados.

### 2. 🗂️ Scripts SQL Modulares

Para facilitar a execução e o versionamento, o código SQL foi separado em etapas lógicas:
* **01_create_tables.sql**: Criação estrutural das tabelas e definição de constraints (PK e FK).
* **02_insert_data.sql**: Povoamento inicial do banco com dados de teste coerentes.
* **03_queries.sql**: Consultas estratégicas utilizando `JOINs`, filtros `WHERE` e ordenação `ORDER BY`.
* **04_update_delete.sql**: Comandos de manutenção para atualização e exclusão segura de registros.

### 3. 🛡️ Integridade e Validação

O banco foi configurado para impedir inconsistências:
* Não é possível cadastrar um carro sem um fabricante válido (Constraint de FK).
* A estrutura impede a exclusão acidental de categorias que possuem veículos vinculados, protegendo o histórico da frota.

## ⚙️ Instruções de Execução

Para garantir a integridade referencial e o funcionamento correto das chaves estrangeiras, é fundamental executar os scripts na ordem abaixo:

### 1. Pré-requisitos
Certifique-se de ter um ambiente SQL configurado. Recomendamos:
* **VS Code** com a extensão **SQLTools** (e driver SQLite/MySQL).
* Ou softwares externos como **MySQL Workbench**, **DBeaver** ou **DB Fiddle** (online).

### 2. Ordem de Execução
1.  ▶️ **`01_create_tables.sql`**
    * Execute este script primeiro. Ele cria a estrutura das tabelas (`FABRICANTE`, `TIPO_CARRO`, `MODELO`) e define as regras de chaves (PK e FK).
2.  ▶️ **`02_insert_data.sql`**
    * Insere a massa de dados inicial.
    * *Importante:* Deve ser rodado após a criação das tabelas para validar os vínculos.
3.  ▶️ **`03_queries.sql`**
    * Contém as consultas de teste (SELECTs com JOIN, Group By, etc) para validar se os relatórios estão corretos.
4.  ▶️ **`04_update_delete.sql`**
    * Execute por último para testar a modificação e exclusão de dados e verificar como o banco reage às restrições de segurança.

## 💻 Tecnologias Utilizadas

* **SQL (ANSI Standard)**: A linguagem universal de dados! 💾
    * DDL (Create Table, Constraints)
    * DML (Insert, Update, Delete)
    * DQL (Select, Joins, Group By)
* **SGBD Compatível**:
    * SQLite (Para testes rápidos e portabilidade)
    * MySQL / PostgreSQL (Compatível com ajustes mínimos)
* **VS Code + SQLTools**: Ambiente de desenvolvimento e execução de queries.

## 🧾 Autor

Feito por **Romario Costa** 👋

Vamos nos conectar!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/romario-costa-dev/)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/romarionc/)
