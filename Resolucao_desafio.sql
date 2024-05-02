SELECT * FROM Filmes;

--Desafio 1
SELECT 
	Nome,
	Ano
FROM Filmes;

--Desafio 2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC;

--Desafio 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'Os Sete Samurais';

--Desafio 4
SELECT * FROM Filmes
WHERE Ano = 1997;

--Desafio 5
SELECT * FROM Filmes
WHERE Ano > 2000;

--Desafio 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--Desafio 7
SELECT Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--Desafio 8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M';

--Desafio 9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--Desafio 10
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.ID;

--Desafio 11
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.ID
WHERE G.Genero = 'Mistério';

--Desafio 12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
INNER JOIN Atores A ON E.IdAtor = A.Id;