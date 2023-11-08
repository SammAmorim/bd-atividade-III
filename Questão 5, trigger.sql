Use Trigge;

CREATE TABLE tb_funcionarios2 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  data_nascimento DATE
);

CREATE TABLE tb_dependentes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_funcionario INT,
  nome VARCHAR(255),
  data_nascimento DATE
);

DELIMITER //
CREATE TRIGGER tg_excluir_dependentes
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    DELETE FROM tb_dependentes
    WHERE id_funcionario = OLD.id;
END //
DELIMITER ;

INSERT INTO tb_funcionarios2 (nome, email, data_nascimento)
VALUES ('Ramiel', 'ramiel@email.com', '2003-03-11');

INSERT INTO tb_dependentes (id_funcionario, nome, data_nascimento)
VALUES (1, 'Cristiano Ronaldo', '2010-02-20');

DELETE FROM tb_funcionarios2 WHERE id = 1;

SELECT * FROM tb_dependentes;