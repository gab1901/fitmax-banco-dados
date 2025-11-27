CREATE DATABASE IF NOT EXISTS fitmax;
USE fitmax;

-- -------------------------
-- Tabela: PLANO
-- -------------------------
CREATE TABLE plano (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    duracao_meses INT NOT NULL
);

-- -------------------------
-- Tabela: ALUNO
-- -------------------------
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(150),
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
);

-- -------------------------
-- Tabela: PROFESSOR
-- -------------------------
CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(80)
);

-- -------------------------
-- Tabela: TREINO
-- -------------------------
CREATE TABLE treino (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    objetivo VARCHAR(100),
    data_inicio DATE,
    id_aluno INT,
    id_professor INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);

-- -------------------------
-- Tabela EXERCICIO
-- -------------------------
CREATE TABLE exercicio (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    series INT,
    repeticoes INT,
    id_treino INT,
    FOREIGN KEY (id_treino) REFERENCES treino(id_treino)
);

-- -------------------------
-- Tabela PRESENCA
-- -------------------------
CREATE TABLE presenca (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

-- -------------------------
-- Tabela PAGAMENTO
-- -------------------------
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);
