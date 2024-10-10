UPDATE situacao_fato
SET matriculado_periodo_num = 0
FROM aluno_dim, curso_dim
WHERE situacao_fato.aluno_id = aluno_dim.chave_aluno
AND situacao_fato.curso_id = curso_dim.chave_curso
AND aluno_dim.ano_ingresso >= (date_part('year', CURRENT_DATE) - curso_dim.periodo_integralizacao)+1
AND situacao_fato.jubilado_num = 1