CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

    CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    vendedor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    );
    
	INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Carnes Bovinas", "Joana");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Carnes Suínas", "João");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Frango", "Marcus");
	INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Peixes e Frutos do Mar", "Maurício");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Linguiças", "Carol");
   

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    importado BOOL,
    peso DECIMAL NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );
    
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Picanha", 60.00, true, 5, 1);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Fraldinha", 45.00, true, 5, 1);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Contra Filé", 58.00, false, 5, 1);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Lombo Suíno", 32.00, false, 4, 2);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Peito de Frango", 20.00, false, 10, 3);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Linguiça frango e bacon", 24.00, false, 8, 5);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Tilápia", 30.00, false, 20, 4);
	INSERT INTO tb_produtos(nome, preco, importado, peso, categorias_id)
    VALUES ("Salmão", 100.00, true, 10, 4);
    
    
    SELECT * FROM tb_categorias; 
	SELECT * FROM tb_produtos; 
    
    SELECT * FROM tb_produtos WHERE preco > 50.00;
    SELECT * FROM tb_produtos WHERE preco BETWEEN  50 AND 150;
    
    SELECT * FROM tb_produtos WHERE nome LIKE "%c%"; 
    
    SELECT * FROM tb_produtos INNER JOIN tb_categorias
    ON tb_produtos.categorias_id = tb_categorias.id;
    
	SELECT * FROM tb_produtos INNER JOIN tb_categorias
    ON tb_produtos.categorias_id = tb_categorias.id WHERE tipo = "Carnes Bovinas";