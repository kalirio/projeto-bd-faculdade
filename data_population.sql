SELECT *
FROM RESPONSAVEL
-- povoamento da tabela Responsavel
INSERT INTO Responsavel
    (id_responsavel, nome, login, senha, email, ativo)
VALUES
(1, 'Karla Liliam', 'kah.alfon', 'senha123', 'karla.liliam@gmail.com', 'true'),
(2, 'Maria Souza', 'maria.souza', 'senha456', 'maria.souza@gmail.com', 'true'),
(3, 'Pedro Costa', 'pedro.costa', 'senha789', 'pedro.costa@gmail.com', 'false'),
(4, 'Ana Gomes', 'ana.gomes', 'senhaabc', 'ana.gomes@gmail.com', 'true'),
(5, 'Carlos Alves', 'carlos.alves', 'senhaxyz', 'carlos.alves@gmail.com', 'true');

SELECT *
FROM VERMIFUGO
-- povoamento da tabela Vermifugo
INSERT INTO Vermifugo
    (id_vermifugo, descricao, principio_ativo)
VALUES
(1, 'Equest Pramox', 'Moxidectina + Praziquantel'),
(2, 'Eqvalan', 'Ivermectina'),
(3, 'Doraequi Plus', 'Doramectina + Praziquantel'),
(4, 'Equest', 'Moxidectina'),
(5, 'Eqvalan Gold', 'Ivermectina + Praziquantel');

SELECT *
FROM VACINA
-- povoamento da tabela Vacina
INSERT INTO Vacina
    (id_vacina, descricao, prevencao)
VALUES
(1, 'Lexington Gold', 'Influenza, Rinopneumonite, Aborto por Herpesvírus, Encefalomielite e Tétano'),
(2, 'Garrotilho', 'Garrotilho'),
(3, 'Rabmune', 'Raiva'),
(4, 'Tri-Equi', 'Encefalomielite, Influenza e Tétano'),
(5, 'Fluvac Innovator EHV 4/1', 'Rinopneumonite e Influenza');

SELECT *
FROM VETERINARIO
-- povoamento da tabela Veterinario
INSERT INTO Veterinario
    (id_veterinario, nome, especialidade, telefone)
VALUES
(1, 'Kaê Assis', 'Clínica Geral Equina', '(65)98141-0297'),
(2, 'Leonardo Denadai', 'Odontologia Equina', '(65)99603-0803'),
(3, 'Gustavo Pereira', 'Ortopedia Equina', '(31)97654-3210'),
(4, 'Helena Martins', 'Odontologia Equina', '(41)96543-2109'),
(5, 'Igor Ribeiro', 'Nutrição Equina', '(51)95432-1098');

SELECT *
FROM CAVALO
-- povoamento da tabela Cavalo
INSERT INTO Cavalo
    (id_cavalo, id_responsavel, nome, sexo, pelagem, raca, dt_nascimento, num_registro)
VALUES
(1, 1, 'Sertanejo', 'M', 'Castanha', 'Puro Sangue Inglês', '2017-08-03', '0.226391'),
(2, 1, 'Folclore', 'F', 'Tordilha', NULL, NULL, NULL),
(3, 1, 'Pérola Negra', 'F', 'Preta', 'Andaluz', '2017-01-10', '0.226392'),
(4, 3, 'Relâmpago', 'M', 'Baia', 'Crioulo', '2016-05-25', '0.226393'),
(5, 4, 'Safira', 'F', 'Tordilha', 'Árabe', '2020-09-01', '0.226394'),
(6, 5, 'Dourado', 'M', 'Palomina', 'Quarto de Milha', '2021-02-12', '0.226395'),
(7, 2, 'Ventania', 'M', 'Zaina', 'Appaloosa', '2018-11-30', '0.226396'),
(8, 1, 'Aurora', 'F', 'Alazã', 'Lusitano', '2017-06-05', '0.226397'),
(9, 4, 'Titã', 'M', 'Rosilha', 'Campolina', '2019-04-22', '0.226398'),
(10, 3, 'Princesa', 'F', 'Lobuna', 'Paint Horse', '2020-01-08', '0.226399');

SELECT *
FROM VERMIFUGACAO
-- povoamento da tabela Vermifugacao
INSERT INTO Vermifugacao
    (id_vermifugacao, id_cavalo, id_vermifugo, dt_vermifugacao)
VALUES
(1, 1, 1, '2025-01-05'),
(2, 2, 2, '2025-02-10'),
(3, 3, 1, '2025-03-15'),
(4, 4, 3, '2025-04-20'),
(5, 5, 2, '2025-05-25'),
(6, 6, 4, '2025-01-20'),
(7, 7, 5, '2025-02-28'),
(8, 8, 3, '2025-03-01'),
(9, 9, 1, '2025-04-10'),
(10, 10, 2, '2025-05-18');

SELECT *
FROM PESAGEM
-- povoamento da tabela Pesagem
INSERT INTO Pesagem
    (id_peso, id_cavalo, peso, dt_pesagem)
VALUES
(1, 1, 540, '2025-06-01'),
(2, 2, 461, '2025-06-01'),
(3, 3, 486, '2025-06-02'),
(4, 4, 486, '2025-06-02'),
(5, 5, 436, '2025-06-03'),
(6, 6, 461, '2025-06-03'),
(7, 7, 436, '2025-06-04'),
(8, 8, 486, '2025-06-04'),
(9, 9, 461, '2025-06-05'),
(10, 10, 500, '2025-06-05');

SELECT *
FROM VACINACAO
-- povoamento da tabela Vacinacao
INSERT INTO Vacinacao
    (id_vacinacao, id_vacina, id_cavalo, dt_vacinacao, dt_revacinacao)
VALUES
(1, 1, 2, '2023-10-10', '2024-04-10'),
(2, 1, 2, '2024-04-11', '2024-10-11'),
(3, 2, 1, '2023-11-15', '2024-11-15'),
(4, 3, 3, '2023-12-20', '2024-12-20'),
(5, 4, 4, '2024-01-25', '2025-01-25'),
(6, 5, 5, '2024-02-01', '2025-02-01'),
(7, 1, 6, '2023-10-20', '2024-04-20'),
(8, 2, 7, '2023-11-25', '2024-11-25'),
(9, 3, 8, '2023-12-05', '2024-12-05'),
(10, 4, 9, '2024-01-10', '2025-01-10');

SELECT *
FROM TREINO
-- povoamento da tabela Treino
INSERT INTO Treino
    (id_treino, id_cavalo, descricao, dt_treino)
VALUES
(1, 2, 'Redondel', '2025-06-10'),
(2, 2, 'Guia', '2025-06-11'),
(3, 3, 'Redondel Montado', '2025-06-12'),
(4, 4, 'Guia com Manta', '2025-06-13'),
(5, 5, 'Guia com Sela', '2025-06-14'),
(6, 6, 'Redondel', '2025-06-15'),
(7, 7, 'Guia', '2025-06-16'),
(8, 8, 'Redondel Montado', '2025-06-17'),
(9, 9, 'Guia com Manta', '2025-06-18'),
(10, 10, 'Guia com Sela', '2025-06-19');

SELECT *
FROM CONSULTA
-- povoamento da tabela Consulta
INSERT INTO Consulta
    (id_consulta, id_cavalo, id_veterinario, diagnostico, prescricao, observacao, dt_consulta)
VALUES
(1, 1, 1, 'Laminite nas mãos', 'Firocoxib', 'Precisa ficar em local seco', '2024-12-27'),
(2, 1, 1, 'Laminite estabilizada', NULL, NULL, '2025-03-28'),
(3, 3, 1, 'Acompanhamento gestacional', 'Exame de ultrassom', 'Feto saudável', '2025-05-10'),
(4, 4, 1, 'Verificação de rotina', NULL, 'Animal saudável', '2025-05-15'),
(5, 5, 2, 'Problema dentário', 'Realizar odontoplastia', NULL, '2025-05-20'),
(6, 6, 5, 'Verminose', 'Realizar OPG', NULL, '2025-05-22'),
(7, 7, 3, 'Lesão em casco', 'Limpeza e bandagem', 'Trocar curativo diariamente', '2025-05-24'),
(8, 8, 5, 'Dificuldade para emprenhar', 'Exames hormonais', NULL, '2025-05-26'),
(9, 9, 4, 'Tosse persistente', 'Antibiótico e repouso', NULL, '2025-05-28'),
(10, 10, 5, 'Baixo peso', 'Ajuste na dieta', 'Não utilizar sal em bloco', '2025-05-30');

SELECT *
FROM CASQUEAMENTO
-- povoamento da tabela Casqueamento
INSERT INTO Casqueamento
    (id_casqueamento, id_cavalo, observacao, dt_casqueamento, ferrageamento)
VALUES
(1, 2, NULL, '2024-04-10', 'false'),
(2, 1, 'Tinha uma broca já drenada', '2024-04-12', 'true'),
(3, 3, NULL, '2024-04-14', 'false'),
(4, 4, NULL, '2024-04-16', 'true'),
(5, 5, 'Hidratar os cascos', '2024-04-18', 'true'),
(6, 6, NULL, '2024-04-20', 'true'),
(7, 7, 'Está com podridão de ranilha', '2024-04-22', 'false'),
(8, 8, NULL, '2024-04-24', 'false'),
(9, 9, NULL, '2024-04-26', 'true'),
(10, 10, NULL, '2024-04-28', 'false');

SELECT *
FROM DIETA
-- povoamento da tabela Dieta
INSERT INTO Dieta
    (id_dieta, id_cavalo, descricao, observacao, dt_prescricao, ativo)
VALUES
(1, 2, 'Pastagem', NULL, '2025-03-01', 'true'),
(2, 1, '10kg de feno', 'Dividir o feno durante a noite também', '2025-03-05', 'true'),
(3, 3, 'Pastagem e  400g de ração', 'Dividir a ração em 2 refeições', '2025-03-10', 'true'),
(4, 4, '10kg de feno e 1kg de ração', 'Dividir o feno durante a noite também e ração em 3 refeições', '2025-03-15', 'true'),
(5, 5, '10kg de feno e 800G de ração', 'Dividir o feno durante a noite também e ração em 2 refeições', '2025-03-20', 'true'),
(6, 6, 'Pastagem', NULL, '2025-03-01', 'true'),
(7, 7, 'Pastagem e suplemento para casco', '100ml de suplemento por dia', '2025-03-25', 'true'),
(8, 8, 'Pastagem e  200g de ração', 'Dividir a ração em 2 refeições', '2025-03-28', 'true'),
(9, 9, '8kg de feno', 'Dividir o feno durante a noite também', '2025-03-30', 'true'),
(10, 10, '10kg de feno e 1,5kg de ração', 'Dividir o feno durante a noite também e ração em 3 refeições', '2025-04-01', 'false'),
(11, 10, '10kg de feno e 500g de ração', 'Dividir o feno durante a noite também e ração em 2 refeições', '2025-06-20', 'true');

SELECT *
FROM GESTACAO
-- povoamento da tabela Gestacao
INSERT INTO Gestacao
    (id_gestacao, id_cavalo, dt_ultrassom, dt_inicio, dt_fim, sexo_potro, status)
VALUES
(1, 3, '2023-01-20', '2023-01-01', '2023-12-10', 'M', 'Concluída'),
(2, 3, '2024-01-10', '2024-01-04', '2024-12-15', 'F', 'Concluída'),
(3, 5, '2024-02-05', '2023-12-01', '2024-11-15', 'M', 'Concluída'),
(4, 8, '2024-03-01', '2024-01-01', '2024-12-15', 'F', 'Concluída'),
(5, 10, '2023-01-15', '2023-01-01', '2023-12-08', 'M', 'Concluída'),
(6, 3, '2023-08-01', '2023-05-01', '2024-04-15', 'F', 'Concluída'),
(7, 5, '2025-09-10', '2025-06-01', '2026-05-15', NULL, 'Em andamento'),
(8, 8, '2025-05-01', '2025-03-01', '2026-02-15', NULL, 'Em andamento'),
(9, 10, '2023-10-01', '2023-07-01', '2024-06-15', 'F', 'Concluída'),
(10, 10, '2024-10-10', '2024-08-01', '2025-07-15', NULL, 'Em andamento');

