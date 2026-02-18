-- CREATE DATABASE secao04;  (no SQLite é só o arquivo .db)

CREATE TABLE tipos_produto (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

CREATE TABLE produtos (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco REAL NOT NULL,
    codigo_tipo INTEGER REFERENCES tipos_produto(codigo) NOT NULL
);

-- Versão alternativa com id e id_tipo_produto (usada em alguns INSERTs)
CREATE TABLE tipos_produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    preco REAL NOT NULL,
    id_tipo_produto INTEGER REFERENCES tipos_produtos(id) NOT NULL
);