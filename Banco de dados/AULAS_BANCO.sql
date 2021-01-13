--EXERCICIOS GROUP BY
--1. Realize uma query no banco de dados das startups indianas, especificamente sobre
-- a tabela de investimentos (investimento), de modo a obter o valor máximo de investimento 
-- destinado à cada startup; em outras palavras, obtenha o valor máximo do valor do investimento, 
-- agrupando esse resultado pelo startup_id.
------SELECT startup_id, MAX(valor) FROM investimento GROUP BY startup_id;


--2. Na aula foi dado um exemplo para descobrimos quantos investimentos cada startup recebeu. 
--Seguindo o mesmo raciocínio utilizando na solução daquele exemplo, realize uma query para 
--descobrir quantos investimentos cada investidor fez. Dica: utilize a coluna investidor_id.
------SELECT investidor_id, COUNT(id) FROM investimento GROUP BY investidor_id;


--3. Você conseguiria fazer o mesmo que foi solicitado na questão anterior, porém, dessa vez, ordenando 
--pela quantidade de investimentos feitos por cada investidor (forma decrescente)? Dica: experimente 
--ordenar pelo COUNT.
------SELECT investidor_id, count(id) FROM investimento GROUP BY investidor_id ORDER BY count(id); 
------SELECT investidor_id, COUNT(id) FROM investimento GROUP BY investidor_id ORDER BY COUNT DESC;

--4. Realize uma query sobre a tabela de investimentos (investimento) com o intuito de obter a média 
--dos valores de investimentos destinados a cada startup.
------SELECT startup_id, AVG(valor) FROM investimento GROUP BY startup_id;


--EXERCICIOS HAVING
--1. Na Q1 da Lista de Exercícios da aula anterior, foi pedido para você realizar uma query sobre a 
--tabela de investimentos (investimento), de modo a obter o valor máximo de investimento destinado 
--à cada startup; em outras palavras, obter o valor máximo do valor do investimento, agrupando esse 
--resultado pelo startup_id. Dessa vez, além disso, utilize a cláusula HAVING para obter apenas os 
--valores máximo de investimento que são menores que 20.000.
------SELECT startup_id, MAX(valor) FROM investimento GROUP BY startup_id HAVING MAX(valor) < 20000;


--2. Realize uma query para descobrir quantos investimentos cada investidor fez 
--(como você fez na Q2 da lista da aula anterior), porém, filtro com o HAVING apenas aqueles que 
--fizeram mais que 5 investimentos.
------SELECT investidor_id, COUNT(id) FROM investimento GROUP BY investidor_id HAVING COUNT(id) > 5;


--3. Obtenha o mesmo que foi solicitado na questão anterior, porém, dessa vez, ordenando pela 
--quantidade de investimentos feitos por cada investidor (forma decrescente).
------SELECT investidor_id, COUNT(id) FROM investimento GROUP BY investidor_id HAVING COUNT(id) > 5 ORDER BY COUNT(id) DESC;


--4. Realize uma query sobre a tabela de investimentos (investimento) com o intuito de obter a 
--média dos valores de investimentos destinados a cada startup, quando essa média for superior 
--a 100.000.
------SELECT startup_id, AVG(valor) FROM investimento GROUP BY startup_id HAVING AVG(valor) > 100000;


--EXEMPLO JOIN
--SELECT startup.nome, cidade.nome, MAX(investimento.valor)
--FROM startup
--LEFT JOIN cidade ON startup.cidade_id = cidade.id
--LEFT JOIN investimento ON startup.id = investimento.startup_id
--GROUP BY startup.nome, cidade.nome;

--EXERCICIOS JOIN
--1. Anteriormente, utilizando apenas as colunas investidor_id e valor da tabela investimento já era possível 
--realizar um query para obter o valor de cada investimento realizado por um investidor. Porém, isso nos mostra 
--o id do investidor, não o seu nome.
--No entanto, com a utilização da cláusula INNER JOIN, gostaríamos que você exibisse o nome do investidor no 
--resultado da query, ao invés do seu id, utilizando, para isso, as tabelas investimento e investidor.
SELECT investidor.nome, investimento.valor
FROM investimento
INNER JOIN investidor ON investidor.id = investimento.investidor_id


--2. Utilizando o mesmo princípio da questão anterior, realize uma query que apresente o nome da startup e o 
--investimento que foi realizado sobre ela. Dica: utilize o JOIN para comunicar as tabelas investimento e startup.
SELECT startup.nome, investimento.valor
FROM investimento
INNER JOIN startup ON startup.id = investimento.startup_id


--3. Lembra que nos Exercícios da Aula 06 você realizou uma query para descobrir quantos investimentos cada 
--investidor fez (questão Q2 da lista citada)? Pois é... No resultado daquela query você deve ter visto apenas 
--o id do investidor (investidor_id). Dessa vez, utilize o Inner Join para obter o nome do investidor 
--(ao invés do seu id) a partir da coluna nome da tabela investidor.
SELECT investidor.nome, COUNT(investimento.id)
FROM investimento
INNER JOIN investidor ON investidor.id = investimento.investidor_id
GROUP BY investidor.nome


