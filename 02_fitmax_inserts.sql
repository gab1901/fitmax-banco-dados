USE fitmax;

-- Plano
INSERT INTO plano (tipo, valor, duracao_meses) VALUES
('Mensal', 99.90, 1),
('Trimestral', 249.90, 3),
('Anual', 799.90, 12);

-- Alunos
INSERT INTO aluno (nome, data_nascimento, telefone, email, id_plano) VALUES
('Gabriel Rodrigues', '2001-05-18', '11 98888-9000', 'gabriel@fitmax.com', 1),
('Ana Paula', '1998-10-12', '11 97777-3000', 'ana.paula@gmail.com', 2),
('Lucas Mendes', '1995-06-04', '11 95555-1111', 'lucas.mendes@gmail.com', 1);

-- Professores
INSERT INTO professor (nome, especialidade) VALUES
('Marcos Silva', 'Hipertrofia'),
('Juliana Costa', 'Funcional');

-- Treinos
INSERT INTO treino (objetivo, data_inicio, id_aluno, id_professor) VALUES
('Hipertrofia Geral', '2025-01-10', 1, 1),
('Perda de Peso', '2025-01-15', 2, 2);

-- Exercícios
INSERT INTO exercicio (nome, series, repeticoes, id_treino) VALUES
('Supino Reto', 4, 12, 1),
('Agachamento Livre', 4, 10, 1),
('Corrida na Esteira', 1, 20, 2);

-- Presenças
INSERT INTO presenca (data, id_aluno) VALUES
('2025-02-01', 1),
('2025-02-01', 2),
('2025-02-02', 1);

-- Pagamentos
INSERT INTO pagamento (data, valor, status, id_aluno) VALUES
('2025-02-01', 99.90, 'Pago', 1),
('2025-02-05', 249.90, 'Aguardando', 2),
('2025-02-10', 99.90, 'Pago', 3);
