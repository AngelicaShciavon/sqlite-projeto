-- Junção clássica (antiga sintaxe)
SELECT p.codigo, p.descricao, p.preco, tp.descricao AS tipo
FROM produtos p, tipos_produto tp
WHERE p.codigo_tipo = tp.codigo;

-- INNER JOIN moderno
SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes c INNER JOIN profissoes p ON c.id_profissao = p.id;

-- LEFT JOIN
SELECT * FROM clientes LEFT OUTER JOIN profissoes ON clientes.id_profissao = profissoes.id;

-- SELF JOIN exemplo
SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
FROM consumidor a
INNER JOIN consumidor b ON a.id <> b.id AND a.cidade = b.cidade
ORDER BY a.cidade;