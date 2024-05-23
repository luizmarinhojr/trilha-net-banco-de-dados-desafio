-- OBJETIVO 1:
SELECT Nome, Ano FROM Filmes;


-- OBJETIVO 2:
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC;


-- OBJETIVO 3:
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';


-- OBJETIVO 4:
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano = 1997;


-- OBJETIVO 5:
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Ano > 2000;


--OBJETIVO 6:
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;


-- OBJETIVO 7:
SELECT Ano, Count(*) Quantidade FROM Filmes 
GROUP BY Ano ORDER BY Quantidade DESC;


-- OBJETIVO 8:
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M';


-- OBJETIVO 9:
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;


-- OBJETIVO 10:
SELECT F.Nome, G.Genero FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;


-- OBJETIVO 11:
SELECT F.Nome, G.Genero FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';


-- OBJETIVO 12:
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM ElencoFilme EF
JOIN Atores A ON EF.IdAtor = A.ID 
JOIN Filmes F ON EF.IdFilme = F.Id 
