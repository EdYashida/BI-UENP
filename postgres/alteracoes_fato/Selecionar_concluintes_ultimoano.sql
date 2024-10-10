SELECT * 
FROM aluno_dim, situacao_fato
WHERE aluno_dim.situacao_curso= 'Formado'
AND situacao_fato.aluno_id = aluno_dim.chave_aluno
AND situacao_fato.curso_id = 6
AND aluno_dim.ano_conclusao = 2023