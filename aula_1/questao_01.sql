CREATE DATABASE db_rh_gerenciador;

USE db_rh_gerenciador;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    funcao VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, funcao, salario)
	VALUES ("João Pedra", "123.456.789-10", "1997-05-27", "Desenvolvedor Júnior", 3000.00);
    
    INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, funcao, salario)
	VALUES ("Maria Fone", "123.000.789-10", "1997-03-29", "Auxiliar Admnistrativa", 1800.00);
    
    INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, funcao, salario)
	VALUES ("Márcia Cadeira", "000.456.789-10", "1998-05-27", "Segurança", 2200.00);
    
    INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, funcao, salario)
	VALUES ("Matheus Porta", "123.456.000-10", "1994-03-27", "Supervisor - Manutenção", 3000.00);
    
    INSERT INTO tb_colaboradores(nome, cpf, data_nascimento, funcao, salario)
	VALUES ("Lúcia Caderno", "111.456.789-10", "1993-08-27", "Motorista", 1900.00);

	SELECT * FROM tb_colaboradores; 
    
    SELECT * FROM tb_colaboradores WHERE salario > 2000;
    
    SELECT * FROM tb_colaboradores WHERE salario < 2000;
    
    UPDATE tb_colaboradores SET salario = 2000.00 WHERE id = 5;