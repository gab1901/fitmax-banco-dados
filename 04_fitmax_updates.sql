-- Atualizar telefone do aluno
UPDATE aluno
SET telefone = '11 90000-1234'
WHERE id_aluno = 1;

-- Atualizar status de pagamento
UPDATE pagamento
SET status = 'Pago'
WHERE id_pagamento = 2;

-- Atualizar objetivo do treino
UPDATE treino
SET objetivo = 'Hipertrofia Avançada'
WHERE id_treino = 1;
