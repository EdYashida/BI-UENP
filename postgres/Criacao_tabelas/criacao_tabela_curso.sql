CREATE TABLE curso_dim AS 
SELECT DISTINCT ON ("codigo_curso") 
       "codigo_curso",
       "seq",
       "CodigoEducacenso",
       "DescricaoCurso",
       "diretoria",
       "EditalIngresso",
       "matriz",
       "modalidade",
       "NivelEnsino",
       "polo",
       "TipoDiploma",
       "turno",
       "RegistroENADE",
       "primaria",
       "anocorrente" 
FROM infogeral1
ORDER BY "codigo_curso", "seq";
