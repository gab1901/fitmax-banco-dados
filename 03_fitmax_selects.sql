-- 1. Listar todos os alunos com seus respectivos planos
SELECT a.nome AS aluno, p.tipo AS plano
FROM aluno a
JOIN plano p ON p.id_plano = a.id_plano;

-- 2. Treinos de um aluno específico
SELECT t.id_treino, t.objetivo, t.data_inicio
FROM treino t
WHERE t.id_aluno = 1;

-- 3. Listar pagamentos ordenados do mais recente para o mais antigo
SELECT * FROM pagamento
ORDER BY data DESC;

-- 4. Exercícios de um treino com JOIN
SELECT e.nome, e.series, e.repeticoes
FROM exercicio e
JOIN treino t ON t.id_treino = e.id_treino
WHERE t.id_treino = 1;

-- 5. Limitar a 2 registros (exemplo de LIMIT)
SELECT nome, email FROM aluno
LIMIT 2;
