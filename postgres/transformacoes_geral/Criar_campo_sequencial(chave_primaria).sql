WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY "codigo_curso") AS chave_curso_temp
    FROM curso_dim
)
UPDATE curso_dim
SET chave_curso = CTE.chave_curso_temp
FROM CTE
WHERE curso_dim.codigo_curso = CTE.codigo_curso;
