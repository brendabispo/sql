CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

    CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    tamanho CHAR NOT NULL,
    PRIMARY KEY (id)
    );
    
	INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Doces", "M");
    INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Salgadas", "M");
    INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Agridoce", "M");
	INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Doces", "G");
    INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Salgadas", "G");
    INSERT INTO tb_categorias(tipo, tamanho)
    VALUES("Agridoce", "G");
   

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    ingredientes VARCHAR(255)NOT NULL,
    borda VARCHAR(255) NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );
    
	INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Calabresa", 35.00, "Calabresa, mussarela, cebola", "Cheddar", 2);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Calabresa", 40.00, "Calabresa, mussarela, cebola", "Catupiry", 5);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("4 Queijos", 49.00, "Mussarela, provolone, parmesão e gorgonzola", "Cheddar", 2);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("4 Queijos", 58.00, "Mussarela, provolone, parmesão e gorgonzola", "Cheddar", 5);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Romeu & Julieta", 35.00, "Mussarela e Goiabada", "Doce de Leite", 1);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Romeu & Julieta", 44.00, "Mussarela e Goiabada", "Doce de Leite", 4);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Lombinho & Abacaxi", 50.00, "Lombinho e abacaxi", "Mussarela", 3);
    INSERT INTO tb_pizzas(nome, preco, ingredientes, borda, categorias_id)
    VALUES ("Lombinho & Abacaxi", 60.00, "Lombinho e abacaxi", "Mussarela", 6);
    
    
    
	SELECT * FROM tb_categorias; 
	SELECT * FROM tb_pizzas; 
    
    SELECT * FROM tb_pizzas WHERE preco > 45;
    SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
    
    SELECT * FROM tb_pizzas WHERE nome LIKE "%m%"; 
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categorias_id = tb_categorias.id;
    
	SELECT * FROM tb_pizzas INNER JOIN tb_categorias
    ON tb_pizzas.categorias_id = tb_categorias.id WHERE tipo = "Salgadas";