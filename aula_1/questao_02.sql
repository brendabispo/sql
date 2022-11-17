CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    peso DECIMAL NOT NULL,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Regata", "Branca", "Roupas", 200.00, 100.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Camisa Polo", "Azul", "Roupas", 100.00, 400.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Calça", "Preta", "Roupas", 250.00, 900.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Boné", "Vermelho", "Acessórios", 80.00, 200.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Bolsa", "Marrom", "Acessórios", 550.00, 600.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Brincos", "Dourados", "Acessórios", 400, 40.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Óculos", "Pretos", "Acessórios", 610.00, 70.00);
    
    INSERT INTO tb_produtos(nome, cor, categoria, preco, peso)
	VALUES ("Pulseira", "Dourada", "Acessórios", 800.00, 60.00);

	SELECT * FROM tb_produtos; 
    
    SELECT * FROM tb_produtos WHERE preco > 500;
    
    SELECT * FROM tb_produtos WHERE preco < 500;
    
    UPDATE tb_produtos SET preco = 590.00 WHERE id = 7;