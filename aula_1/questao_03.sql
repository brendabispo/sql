CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    nota INT NOT NULL,
    sala INT NOT NULL,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Ana", "123.456.789-10", "1997-06-10", 8, 1);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Maria", "123.456.789-10", "1997-05-29", 8, 1);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Joana", "123.456.789-10", "1997-05-24", 7, 2);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Pedro", "123.456.789-10", "1997-05-28", 5, 4);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Arthur", "123.456.789-10", "1997-05-17", 4, 6);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Guilherme", "123.456.789-10", "1997-05-05", 2, 3);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Carol", "123.456.789-10", "1997-05-01", 9, 5);
    
    INSERT INTO tb_estudantes(nome, cpf, data_nascimento, nota, sala)
	VALUES ("Rafael", "123.456.789-10", "1997-05-30", 8, 1);

	SELECT * FROM tb_estudantes; 
    
    SELECT * FROM tb_estudantes WHERE nota > 7;
    
    SELECT * FROM tb_estudantes WHERE nota < 7;
    
    UPDATE tb_estudantes SET nota = 10 WHERE id = 2;