-- Tipos Produto
INSERT INTO tipos_produtos (descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos (descricao) VALUES ('Impressoras');
INSERT INTO tipos_produtos (descricao) VALUES ('Diversos');

INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

-- Produtos
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Notebook DELL 1544', 2345.67, 1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Impr. Jato de Tinta', 456.00, 2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Mouse sem fio', 45, 3);

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', 1800, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', 300, 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', 500, 2);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('Notebook', 1200, 1);
INSERT INTO produtos (descricao, preco, id_tipo_produto) VALUES ('IPad', 2600, 1);

-- Update
UPDATE tipos_produtos SET descricao = 'Nobreak' WHERE id = 3;
UPDATE produtos SET descricao = 'Notebook', preco = 2800 WHERE id = 2;

-- Delete
DELETE FROM tipos_produtos WHERE id = 3;