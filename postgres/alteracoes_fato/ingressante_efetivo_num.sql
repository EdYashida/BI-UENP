UPDATE situacao_fato
SET ingressante_efetivo_num = 1
FROM aluno_dim
WHERE aluno_id = aluno_dim.chave_aluno
AND ingressante_num=1
AND matriculado_num=1