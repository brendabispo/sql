CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

    CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    PRIMARY KEY (id)
    );
    
	INSERT INTO tb_classes(tipo, nivel)
    VALUES("Cavalheiro", 1);
    INSERT INTO tb_classes(tipo, nivel)
    VALUES("Arqueiro", 1);
    INSERT INTO tb_classes(tipo, nivel)
    VALUES("Soldado", 1);
    INSERT INTO tb_classes(tipo, nivel)
    VALUES("Mago", 1);
    INSERT INTO tb_classes(tipo, nivel)
    VALUES("General", 1);
   

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nivel_armadura INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classes_id BIGINT,
    PRIMARY KEY (id),
	FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
    );
    
	INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Yan", 1000, 200, 500, 1);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Ayô", 2000, 800, 600, 1);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Akauã", 800, 700, 200, 2);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Ami", 900, 900, 500, 2);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Zaon", 200, 800, 600, 3);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Vick", 1500, 500, 900, 5);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Waio", 300, 300, 700, 4);
    INSERT INTO tb_personagens(nome, nivel_armadura, poder_ataque, poder_defesa, classes_id)
    VALUES ("Zan", 700, 100, 500, 5);

	SELECT * FROM tb_classes; 
	SELECT * FROM tb_personagens; 
    
    SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
    SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
    
    SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; 
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classes_id = tb_classes.id;
    
	SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classes_id = tb_classes.id WHERE tipo = "Cavalheiro";