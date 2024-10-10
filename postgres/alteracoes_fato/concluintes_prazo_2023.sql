UPDATE situacao_fato
SET concluinte_prazo_num = 1
FROM aluno_dim
WHERE aluno_dim.situacao_curso= 'Formado'
AND situacao_fato.aluno_id = aluno_dim.chave_aluno
AND aluno_dim.ano_conclusao = (situacao_fato.anocorrente - 1) 
AND aluno_dim.ano_letivo_previsao_conclusao = aluno_dim.ano_conclusao