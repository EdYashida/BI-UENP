SELECT aluno_dim.ano_ingresso
FROM situacao_fato, aluno_dim, curso_dim
WHERE situacao_fato.curso_id = 5
AND situacao_fato.aluno_id = aluno_dim.chave_aluno
AND situacao_fato.codigo_curso = curso_dim.codigo_curso
AND aluno_dim.ano_ingresso >= (date_part('year', CURRENT_DATE) - curso_dim.periodo_integralizacao)+1
AND situacao_fato.matriculado_num = 1