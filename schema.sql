CREATE TABLE Responsavel (
id_responsavel integer PRIMARY KEY,
nome varchar(100),
login varchar(50),
senha varchar(50),
email varchar(50),
ativo boolean
);

CREATE TABLE Cavalo (
id_cavalo integer PRIMARY KEY,
id_responsavel integer,
nome varchar(100),
sexo char(1),
pelagem varchar(50),
raca varchar(50),
dt_nascimento date,
num_registro varchar(20),
FOREIGN KEY(id_responsavel) REFERENCES Responsavel (id_responsavel)
);

CREATE TABLE Vermifugo (
id_vermifugo integer PRIMARY KEY,
descricao varchar(50),
principio_ativo varchar(100)
);

CREATE TABLE Vermifugacao (
id_vermifugacao integer PRIMARY KEY,
id_cavalo integer,
id_vermifugo integer,
dt_vermifugacao date,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo),
FOREIGN KEY(id_vermifugo) REFERENCES Vermifugo (id_vermifugo)
);

CREATE TABLE Pesagem (
id_peso integer PRIMARY KEY,
id_cavalo integer,
peso integer,
dt_pesagem date,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo)
);

CREATE TABLE Vacina (
id_vacina integer PRIMARY KEY,
prevencao varchar(100),
descricao varchar(50)
);

CREATE TABLE Vacinacao (
id_vacinacao integer PRIMARY KEY,
id_vacina integer,
id_cavalo integer,
dt_vacinacao date,
dt_revacinacao date,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo),
FOREIGN KEY(id_vacina) REFERENCES Vacina (id_vacina)
);

CREATE TABLE Treino (
id_treino integer PRIMARY KEY,
id_cavalo integer,
descricao varchar(100),
dt_treino date,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo)
);

CREATE TABLE Veterinario (
id_veterinario integer PRIMARY KEY,
nome varchar(50),
especialidade varchar(100),
telefone varchar(15)
);

CREATE TABLE Consulta (
id_consulta integer PRIMARY KEY,
id_cavalo integer,
id_veterinario integer,
diagnostico varchar(100),
prescricao varchar(100),
observacao varchar(100),
dt_consulta date,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo),
FOREIGN KEY(id_veterinario) REFERENCES Veterinario (id_veterinario)
);

CREATE TABLE Casqueamento (
id_casqueamento integer PRIMARY KEY,
id_cavalo integer,
observacao varchar(50),
dt_casqueamento date,
ferrageamento boolean,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo)
);

CREATE TABLE Dieta (
id_dieta integer PRIMARY KEY,
id_cavalo integer,
descricao varchar(200),
observacao varchar(100),
dt_prescricao date,
ativo boolean,
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo)
);

CREATE TABLE Gestacao (
id_gestacao integer PRIMARY KEY,
id_cavalo integer,
dt_ultrassom date,
dt_inicio date,
dt_fim date,
sexo_potro char(1),
status varchar(50),
FOREIGN KEY(id_cavalo) REFERENCES Cavalo (id_cavalo)
);
