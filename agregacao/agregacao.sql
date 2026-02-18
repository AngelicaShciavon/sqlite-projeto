-- Funções básicas
SELECT MAX(preco_venda) FROM produtos;
SELECT MIN(preco_venda) FROM produtos;
SELECT ROUND(AVG(preco_venda), 2) FROM produtos;
SELECT COUNT(*) FROM produtos WHERE id_categoria = 1;

-- Com nome da categoria
SELECT c.nome, MAX(p.preco_venda)
FROM produtos p
INNER JOIN categorias c ON c.id = p.id_categoria
GROUP BY c.nome;

-- Com HAVING
SELECT id_categoria, MAX(preco_venda)
FROM produtos
GROUP BY id_categoria
HAVING MAX(preco_venda) > 10;

-- Exemplo completo de estoque por tipo e fabricante
SELECT 
    t.nome AS Tipo,
    f.nome AS Fabricante,
    SUM(p.quantidade) AS "Quantidade em Estoque"
FROM produtos p
INNER JOIN tipos t ON t.id = p.id_tipo
INNER JOIN fabricantes f ON f.id = p.id_fabricante
GROUP BY t.nome, f.nome
HAVING SUM(p.quantidade) > 200
ORDER BY "Quantidade em Estoque" DESC;