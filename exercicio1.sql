CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria (
id BIGINT AUTO_INCREMENT,
bebidas VARCHAR(255),
preço DECIMAL,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizza (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
descricao VARCHAR (255),
preco DECIMAL NOT NULL,
quantidade INT,
doce VARCHAR (125),
salgada VARCHAR (125),
id_categoria BIGINT,
PRIMARY KEY (id)
);

ALTER TABLE tb_pizza ADD CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id);

INSERT INTO tb_categoria (bebidas,preço) VALUES ("Coca-cola",12.00);
INSERT INTO tb_categoria (bebidas,preço) VALUES ("Fanta",9.00);
INSERT INTO tb_categoria (bebidas,preço) VALUES ("Pepsi",9.00);
INSERT INTO tb_categoria (bebidas,preço) VALUES ("Guaraná",9.00);

alter table tb_pizza modify preco decimal(6,2);

INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Mussarela", "mussarela, rodelas de tomate e orégano",60.00,7,"NÃO","SIM",3);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Escarola", "escarola refogada, mussarela e orégano",50.00,5,"NÃO","SIM",3);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Calabresa", "mussarela, linguiça calabresa e cebola",69.00,10,"NÃO","SIM",3);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Lombinho", "(mussarela, rodelas de tomate, queijo parmesão e orégano",89.00,3,"NÃO","SIM",3);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Mussarela", "mussarela, lombo defumado e cebola",35.00,10,"SIM","NÃO",1);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Siciliana", "mussarela, bacon e champignon ao molho rose",69.00,7,"NÃO","SIM",3);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Banana", "banana caramelizada, leite condensado e canela",40.00,8,"SIM","NÃO",1);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Mussarela", "mussarela, rodelas de tomate e orégano",59.00,4,"SIM","NÃO",1);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("chocolate", "chocolate preto ou branco",46.00,7,"SIM","NÃO",1);
INSERT INTO tb_pizza (nome,descricao,preco,quantidade,doce,salgada,id_categoria) VALUES ("Prestígio", "chocolate, coco ralado e leite condensado",28.00,10,"SIM","NÃO",1);

alter table tb_pizza modify preco decimal(6,2);

select * from tb_pizza;

SELECT * FROM tb_pizza WHERE preco < 45;

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_categoria WHERE nome LIKE "M%";

SELECT  nome,descricao FROM tb_categoria INNER JOIN tb_pizza ON id_categoria = tb_categoria.pizza_id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_categoria WHERE tb_pizza.id_categoria = 1;
