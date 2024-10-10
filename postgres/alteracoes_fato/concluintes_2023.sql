UPDATE situacao_fato
SET concluinte_num = 1
FROM aluno_dim
WHERE aluno_dim.situacao_curso= 'Formado'
AND situacao_fato.aluno_id = aluno_dim.chave_aluno
