CREATE DATABASE bd_recursoshumanos;

USE bd_recursoshumanos;

CREATE TABLE tb_colaboradores (

id BIGINT AUTO_INCREMENT,

nome VARCHAR (255)  NOT NULL,
sobrenome VARCHAR (255) NOT NULL,
setor VARCHAR (255) NOT NULL,
salario bigint  NOT NULL ,
contato int,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome,sobrenome,setor,salario,contato) VALUES ("Marcelo","Silva","Vendas",1200.00,998524225);
INSERT INTO tb_colaboradores (nome,sobrenome,setor,salario,contato) VALUES ("Rose","Santos","Vendas",1200.00,998765342);
INSERT INTO tb_colaboradores (nome,sobrenome,setor,salario,contato) VALUES ("Meire","Nunes","Comercial",2400.00,997653466);
INSERT INTO tb_colaboradores (nome,sobrenome,setor,salario,contato) VALUES ("Rute","Silva","Financeiro",2900.00,997886474);
INSERT INTO tb_colaboradores (nome,sobrenome,setor,salario,contato) VALUES ("Erineu","Roma","Financeiro",2900.00,986543877);

alter table tb_colaboradores modify salario decimal(6,2);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario <= 2000;

UPDATE tb_colaboradores SET salario = 2600 WHERE id = 3;