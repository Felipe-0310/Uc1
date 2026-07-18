CREATE DATABASE Papelaria;

USE Papelaria;

CREATE TABLE vendas (
produtos VARCHAR(50),
cidade VARCHAR(50),
quantidade INT,
preco_unitario DECIMAL(10,2));

INSERT INTO vendas (produtos,cidade,quantidade,preco_unitario)
VALUES ('caderno', 'Rio de Janeiro', 34, 12.50);

INSERT INTO vendas (produtos,cidade,quantidade,preco_unitario)
VALUES ('lapis', 'Rio de Janeiro', 10, 2.50),
       ('caaderno inteligente','Rio de Janeiro', 5, 80.80);

SELECT * FROM vendas;

SELECT produtos, preco_unitario FROM vendas;

SELECT produtos, quantidade,preco_unitario
FROM vendas
WHERE quantidade >= 10;


UPDATE vendas SET preco_unitario = 13.00 WHERE produtos = 'caderno';



SET GLOBAL local_infile = 1;


LOAD DATA INFILE "C:/Users/felipe.espirito/Desktop/vendas_brutas2.csv"
INTO TABLE vendas
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(produtos, cidade, quantidade, preco_unitario);  


SELECT DISTINCT cidade
FROM vendas;


DROP TABLE vendas;






