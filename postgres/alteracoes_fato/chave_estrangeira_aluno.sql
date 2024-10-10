UPDATE situacao_fato
SET aluno_id = aluno_dim.chave_aluno
FROM aluno_dim
WHERE situacao_fato.seq = aluno_dim.seq;
