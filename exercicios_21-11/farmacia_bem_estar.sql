CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

    CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    vendedor VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
    );
    
	INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Cosméticos", "Joana");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Medicamentos", "João");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Higiene Pessoal", "Marcus");
	INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Alimentos", "Maurício");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Bebidas", "Carol");
    INSERT INTO tb_categorias(tipo, vendedor)
    VALUES("Eletrônicos", "Gabriel");
   

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    quantidade INT NOT NULL,
    data_validade DATE NOT NULL,
    categorias_id BIGINT,
    PRIMARY KEY (id),
	FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
    );
    
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Sabonete Facial Líquido", 45.00, 10, "2029-05-01", 1);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Dipirona", 9.00, 30, "2024-03-01", 2);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Sabonete íntimo", 15.00, 8, "2025-06-01", 3);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Barrinha de cereal", 5.00, 10, "2022-12-30", 4);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Água", 2.00, 50, "2023-02-01", 5);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Secador", 85.00, 3, "2032-01-01", 6);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Refrigerante", 3.00, 50, "2023-02-01", 5);
	INSERT INTO tb_produtos(nome, preco, quantidade, data_validade, categorias_id)
    VALUES ("Suco", 6.00, 50, "2023-02-01", 5);
    
    
    SELECT * FROM tb_categorias; 
	SELECT * FROM tb_produtos; 
    
    SELECT * FROM tb_produtos WHERE preco > 50.00;
    SELECT * FROM tb_produtos WHERE preco BETWEEN  5 AND 60;
    
    SELECT * FROM tb_produtos WHERE nome LIKE "%c%"; 
    
    SELECT * FROM tb_produtos INNER JOIN tb_categorias
    ON tb_produtos.categorias_id = tb_categorias.id;
    
	SELECT * FROM tb_produtos INNER JOIN tb_categorias
    ON tb_produtos.categorias_id = tb_categorias.id WHERE tipo = "Bebidas";