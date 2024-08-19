-- Criando o banco de dados
CREATE DATABASE Filmes;
GO

-- Usando o banco de dados
USE Filmes;
GO

-- Criando a tabela Filmes
CREATE TABLE Filmes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(255) NOT NULL,
    Ano INT NOT NULL,
    Duracao INT NOT NULL
);
GO

-- Criando a tabela Atores
CREATE TABLE Atores (
    Id INT PRIMARY KEY IDENTITY(1,1),
    PrimeiroNome NVARCHAR(255) NOT NULL,
    UltimoNome NVARCHAR(255) NOT NULL,
    Genero NVARCHAR(50) NOT NULL
);
GO

-- Criando a tabela Generos
CREATE TABLE Generos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100) NOT NULL
);
GO

-- Criando a tabela ElencoFilme
CREATE TABLE ElencoFilme (
    FilmeId INT FOREIGN KEY REFERENCES Filmes(Id),
    AtorId INT FOREIGN KEY REFERENCES Atores(Id),
    Papel NVARCHAR(255) NOT NULL,
    PRIMARY KEY (FilmeId, AtorId)
);
GO

-- Criando a tabela FilmesGenero
CREATE TABLE FilmesGenero (
    FilmeId INT FOREIGN KEY REFERENCES Filmes(Id),
    GeneroId INT FOREIGN KEY REFERENCES Generos(Id),
    PRIMARY KEY (FilmeId, GeneroId)
);
GO

-- Inserindo dados na tabela Filmes
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('De Volta Para o Futuro', 1985, 116);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Titanic', 1997, 195);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Matrix', 1999, 136);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 2001, 178);
INSERT INTO Filmes (Nome, Ano, Duracao) VALUES ('Interestelar', 2014, 169);
GO

-- Inserindo dados na tabela Atores
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Michael', 'J. Fox', 'Masculino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Leonardo', 'DiCaprio', 'Masculino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Keanu', 'Reeves', 'Masculino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Elijah', 'Wood', 'Masculino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Matthew', 'McConaughey', 'Masculino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Kate', 'Winslet', 'Feminino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Carrie-Anne', 'Moss', 'Feminino');
INSERT INTO Atores (PrimeiroNome, UltimoNome, Genero) VALUES ('Liv', 'Tyler', 'Feminino');
GO

-- Inserindo dados na tabela Generos
INSERT INTO Generos (Nome) VALUES ('Ação');
INSERT INTO Generos (Nome) VALUES ('Aventura');
INSERT INTO Generos (Nome) VALUES ('Drama');
INSERT INTO Generos (Nome) VALUES ('Ficção Científica');
INSERT INTO Generos (Nome) VALUES ('Mistério');
INSERT INTO Generos (Nome) VALUES ('Romance');
GO

-- Inserindo dados na tabela ElencoFilme
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (1, 1, 'Marty McFly');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (2, 2, 'Jack Dawson');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (2, 6, 'Rose DeWitt Bukater');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (3, 3, 'Neo');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (3, 7, 'Trinity');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (4, 4, 'Frodo Baggins');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (4, 8, 'Arwen Undómiel');
INSERT INTO ElencoFilme (FilmeId, AtorId, Papel) VALUES (5, 5, 'Cooper');
GO

-- Inserindo dados na tabela FilmesGenero
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (1, 1);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (1, 4);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (2, 3);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (2, 6);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (3, 1);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (3, 4);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (3, 5);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (4, 1);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (4, 2);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (5, 1);
INSERT INTO FilmesGenero (FilmeId, GeneroId) VALUES (5, 4);
GO

-- Consultas conforme solicitado no desafio

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme "De Volta Para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome AS NomeFilme, G.Nome AS NomeGenero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.FilmeId
JOIN Generos G ON FG.GeneroId = G.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome AS NomeFilme, G.Nome AS NomeGenero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.FilmeId
JOIN Generos G ON FG.GeneroId = G.Id
WHERE G.Nome = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.FilmeId
JOIN Atores A ON EF.AtorId = A.Id;
