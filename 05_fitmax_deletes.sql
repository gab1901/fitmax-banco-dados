-- Remover presença duplicada (exemplo)
DELETE FROM presenca
WHERE id_presenca = 3;

-- Remover exercício de treino cancelado
DELETE FROM exercicio
WHERE id_exercicio = 3;

-- Remover pagamento incorreto
DELETE FROM pagamento
WHERE id_pagamento = 3;
