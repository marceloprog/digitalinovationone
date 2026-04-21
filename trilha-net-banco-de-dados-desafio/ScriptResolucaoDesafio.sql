-- 1 - Buscar o nome e ano dos filmes
select nome,ano from filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select nome, ano from filmes order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from filmes where nome ='De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select * from filmes where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where ano>2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where duracao >100 and duracao<150 order by duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) as Quantidade from filmes group by ano order by Quantidade Desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Primeironome,Ultimonome from atores where genero='M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select primeironome,ultimonome from atores where genero='F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select  f.nome, g.genero from filmesgenero fg 
join filmes f on f.id=fg.idFilme
join generos g on g.id = fg.idgenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select  f.nome, g.genero from filmesgenero fg 
join filmes f on f.id=fg.idFilme
join generos g on g.id = fg.idgenero
where fg.idGenero=10

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome , A.PrimeiroNome, A.UltimoNome, EF.Papel
from ElencoFilme EF
join Atores A on A.id = EF.idAtor
join Filmes F on F.id = EF.idFilme