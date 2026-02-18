SELECT * FROM tipos_produto;
SELECT * FROM produtos;

SELECT p.codigo AS cod, p.descricao AS descr, p.preco AS pre, p.codigo_tipo AS ctp 
FROM produtos AS p;

-- Exemplos com alias
SELECT codigo, descricao FROM tipos_produto WHERE descricao = 'Computador';
SELECT * FROM produtos WHERE preco <= 300;