SELECT c.id, c.nome, c.data_nascimento, c.telefone, p.cargo
FROM clientes c
INNER JOIN profissoes p ON c.id_profissao = p.id;

SELECT * FROM clientes
LEFT JOIN profissoes ON clientes.id_profissao = profissoes.id;

SELECT a.nome AS Consumidor1, b.nome AS Consumidor2, a.cidade
FROM consumidor a
INNER JOIN consumidor b ON a.id <> b.id AND a.cidade = b.cidade;
