CREATE DATABASE revisao;
USE revisao;


CREATE TABLE produtos (
codigo int PRIMARY KEY,
nome_produto varchar(255),
cor varchar(255),
preco decimal(6,2)
);

CREATE TABLE clientes (
email varchar(255),
id_cliente int PRIMARY KEY,
nome_cliente varchar(255),
estado varchar(2)
);

CREATE TABLE compras (
nf int PRIMARY KEY,
data_compra date,
id_cliente int,
codigo int,
FOREIGN KEY(id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY(codigo) REFERENCES produtos (codigo)
);
