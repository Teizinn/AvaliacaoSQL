SELECT * FROM Projeto WHERE instituicao_id = 10;
SELECT * FROM Professor WHERE id NOT IN (SELECT DISTINCT responsavel_professor_id FROM Projeto);
SELECT * FROM Projeto WHERE responsavel_professor_id = 1;
SELECT COUNT(*) AS total_projetos FROM Projeto;
SELECT * FROM Projeto WHERE colaborador_id IS NULL;
SELECT * FROM Projeto p JOIN Professor prof ON p.responsavel_professor_id = prof.id WHERE prof.area_atuacao = 'Tecnologia';
SELECT c.nome AS curso, p.* FROM Projeto p 
JOIN Professor prof ON p.responsavel_professor_id = prof.id 
JOIN Curso c ON prof.curso_id = c.id;
