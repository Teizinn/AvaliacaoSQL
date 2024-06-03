USE Avaliacao;

CREATE TABLE Instituicao (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    sigla VARCHAR(10)
);

CREATE TABLE Curso (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    area VARCHAR(50)
);

CREATE TABLE Professor (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    curso_id INT,
    area_atuacao VARCHAR(50),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

CREATE TABLE Projeto (
    id INT PRIMARY KEY,
    titulo VARCHAR(255),
    resumo TEXT,
    responsavel_professor_id INT,
    colaborador_id INT,
    instituicao_id INT,
    FOREIGN KEY (responsavel_professor_id) REFERENCES Professor(id),
    FOREIGN KEY (colaborador_id) REFERENCES Professor(id),
    FOREIGN KEY (instituicao_id) REFERENCES Instituicao(id)
);
INSERT INTO Instituicao (id, nome, sigla) VALUES
(10, "Universidad Franciscana", "UFN"),
(20, "Universidade Federal de Santa Maria", "UFSM");

INSERT INTO Curso (id, nome, area) VALUES
(1, "Ciência da Computação", "Tecnologia"),
(2, "Sistemas de Informação", "Tecnologia"),
(3, "Filosofia", "Sociais");

INSERT INTO Professor (id, nome, email, curso_id, area_atuacao) VALUES
(1, "Alexandre Zamberlan", "alexz@ufn.edu.br", 1, "Tecnologia"),
(2, "Ana Paula", "apc@ufn.edu.br", 1, "Tecnologia"),
(3, "Sylvio Garcia", "sylvio@ufn.edu.br", 2, "Tecnologia"),
(4, "Mirkos Martins", "mirkos@ufn.edu.br", 1, "Tecnologia");

INSERT INTO Projeto (id, titulo, resumo, responsavel_professor_id, colaborador_id, instituicao_id) VALUES
(1, "Web Crawler", "Trabalho do Zamba", 1, NULL, 10),
(2, "SirPerf", "Sistema de perfusão", 1, 3, 10),
(3, "OdontoTren", "Sistema de gestão de atendimento", 2, 3, 20),
(4, "Avida", "Sistema de acompanhamento psiquiátrico", 1, NULL, 10);
