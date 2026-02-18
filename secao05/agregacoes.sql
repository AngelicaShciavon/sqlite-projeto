-- Funções de agregação simples
SELECT MAX(preco_venda) FROM produtos;
SELECT MIN(preco_venda) FROM produtos;
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;
SELECT COUNT(*) AS quantidade FROM produtos WHERE id_categoria = 1;

-- Com GROUP BY e HAVING
SELECT id_categoria, MAX(preco_venda) 
FROM produtos 
GROUP BY id_categoria 
HAVING MAX(preco_venda) > 10;