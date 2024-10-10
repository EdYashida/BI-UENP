UPDATE situacao_fato
SET curso_id = curso_dim.chave_curso
FROM curso_dim
WHERE situacao_fato.codigo_curso = curso_dim.codigo_curso;
