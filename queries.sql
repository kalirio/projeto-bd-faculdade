-- 3 consultas envolvendo 3 tabelas diferentes
-- Consulta 1 - Princípio ativo do vermífugo por cavalo
SELECT
	c.nome AS nome_cavalo,
	ve.dt_vermifugacao,
	v.principio_ativo AS principio_ativo_vermifugo,
	v.descricao AS nome_vermifugo
FROM CAVALO C, VERMIFUGACAO VE, VERMIFUGO V
WHERE c.id_cavalo = ve.id_cavalo
	AND v.id_vermifugo = ve.id_vermifugo
ORDER BY 1
-- Consulta 2.1 - Consultas do cavalo Sertanejo
SELECT
	co.dt_consulta,
	c.nome AS nome_cavalo,
	v.nome AS nome_veterinario,
	co.diagnostico AS diagnostico_consulta
FROM CAVALO C, CONSULTA CO, VETERINARIO V
WHERE c.id_cavalo = co.id_cavalo
	AND co.id_veterinario = v.id_veterinario
	AND c.nome = 'Sertanejo'
ORDER BY 1
-- Consulta 2 - Consultas dos cavalos
SELECT
	co.dt_consulta,
	c.nome AS nome_cavalo,
	v.nome AS nome_veterinario,
	co.diagnostico AS diagnostico_consulta
FROM CAVALO C, CONSULTA CO, VETERINARIO V
WHERE c.id_cavalo = co.id_cavalo
	AND co.id_veterinario = v.id_veterinario
ORDER BY 1
-- Consulta 3 - Status de gestação por égua
SELECT
	g.status AS status_gestacao,
	c.nome AS nome_cavalo,
	g.dt_inicio,
	g.dt_fim,
	g.sexo_potro,
	r.nome AS nome_responsavel_cavalo
FROM CAVALO C, GESTACAO G, RESPONSAVEL R
WHERE c.id_cavalo = g.id_cavalo
	AND c.id_responsavel = r.id_responsavel
ORDER BY 1 DESC, 2
-- 1 consulta envolvendo 4 tabelas diferentes
-- Consulta 4 - Controle de vacinação por cavalo
SELECT
	c.nome AS nome_cavalo,
	va.dt_vacinacao,
	v.descricao AS nome_vacina,
	va.dt_revacinacao,
	r.nome AS nome_responsavel_cavalo
FROM CAVALO C, VACINACAO VA, VACINA V, RESPONSAVEL R
WHERE c.id_cavalo = va.id_cavalo
	AND va.id_vacina = v.id_vacina
	AND c.id_responsavel = r.id_responsavel
ORDER BY 1, 2 DESC
-- 1 consulta envolvendo 5 tabelas diferentes
-- Consulta 5 - Visão geral de atividades
SELECT
	c.nome AS nome_cavalo,
	COUNT(DISTINCT co.id_consulta) AS total_consulta,
	COUNT(DISTINCT va.id_vacinacao) AS total_vacinacao,
	COUNT(DISTINCT t.id_treino) AS total_treino,
	COUNT(DISTINCT ca.id_casqueamento) AS total_casqueamento
FROM CAVALO C
LEFT JOIN CONSULTA CO ON c.id_cavalo = co.id_cavalo
LEFT JOIN VACINACAO VA ON c.id_cavalo = va.id_cavalo
LEFT JOIN TREINO T ON c.id_cavalo = t.id_cavalo
LEFT JOIN CASQUEAMENTO CA ON c.id_cavalo = ca.id_cavalo
GROUP BY c.nome
ORDER BY 1 