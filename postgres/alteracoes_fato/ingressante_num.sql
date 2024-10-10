UPDATE situacao_fato
SET ingressante_num = 1
FROM aluno_dim
WHERE aluno_id = aluno_dim.chave_aluno
AND
anocorrente = aluno_dim.ano_ingresso