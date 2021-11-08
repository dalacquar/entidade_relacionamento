/*
Git: https://github.com/dalacquar/entidade_relacionamento
*/
DROP TABLE IF EXISTS PRODUTO_PEDIDO;
DROP TABLE IF EXISTS PEDIDO;
DROP TABLE IF EXISTS PRODUTO;
DROP TABLE IF EXISTS MARCA;
DROP TABLE IF EXISTS SUBCATEGORIA;
DROP TABLE IF EXISTS CATEGORIA;
DROP TABLE IF EXISTS FORNECEDOR;
DROP TABLE IF EXISTS AVALIACAO;
DROP TABLE IF EXISTS ENDERECO;
DROP TABLE IF EXISTS USUARIO;

CREATE TABLE MARCA (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    parceria VARCHAR(100)
);

CREATE TABLE CATEGORIA (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(100)
);

CREATE TABLE SUBCATEGORIA (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(100),
    id_categoria INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA (id)
);

CREATE TABLE FORNECEDOR (
    cnpj INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(100)
);

CREATE TABLE PRODUTO (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(1028),
    preco FLOAT,
    id_categoria INTEGER,
    id_marca INTEGER,
    id_fornecedor INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA (id),
    FOREIGN KEY (id_marca) REFERENCES MARCA (id),
    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDOR (cnpj)
);

CREATE TABLE USUARIO (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(100),
    senha VARCHAR(16)
);

CREATE TABLE ENDERECO (
    id INTEGER PRIMARY KEY,
    cep VARCHAR(100),
    endereco VARCHAR(255),
    numero VARCHAR(4),
    complemento VARCHAR(255),
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO (id)
);

CREATE TABLE PEDIDO (
    id INTEGER PRIMARY KEY,
    valor_total FLOAT,
    data_entrega DATE,
    preco FLOAT,
    id_endereco INTEGER,
    id_usuario INTEGER,
    FOREIGN KEY (id_endereco) REFERENCES ENDERECO (id),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO (id)
);

CREATE TABLE PRODUTO_PEDIDO (
    observacao VARCHAR(255),
    quant_produto INT,
    valor_itens FLOAT,
    id_produto INTEGER,
    id_pedido INTEGER,
    FOREIGN KEY (id_produto) REFERENCES PRODUTO (id),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO (id),
    PRIMARY KEY (id_produto , id_pedido)
);

CREATE TABLE AVALIACAO (
    id INTEGER PRIMARY KEY,
    nota INT,
    titulo VARCHAR(100),
    avaliacao VARCHAR(1028),
    id_produto INTEGER,
    id_usuario INTEGER,
    FOREIGN KEY (id_produto) REFERENCES USUARIO (id),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO (id)
);

