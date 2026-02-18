-- Transação com COMMIT
BEGIN TRANSACTION;
INSERT INTO tipos_produto (descricao) VALUES ('Notebook');
INSERT INTO tipos_produto (descricao) VALUES ('Nobreak');
COMMIT;

-- Transação com ROLLBACK
BEGIN TRANSACTION;
INSERT INTO tipos_produto (descricao) VALUES ('Tablet');
INSERT INTO tipos_produto (descricao) VALUES ('Baterias');
-- (aqui daria pra ver os dados temporariamente)
ROLLBACK;