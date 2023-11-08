Use Trigge;

CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  data_nascimento DATE
);

CREATE TABLE tb_funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255),
  data_nascimento DATE
);

DELIMITER //
CREATE TRIGGER tg_registrar_demitidos
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (id, nome, email, data_nascimento)
    VALUES (OLD.id, OLD.nome, OLD.email, OLD.data_nascimento);
END //
DELIMITER ;


INSERT INTO tb_funcionarios (nome, email, data_nascimento)
VALUES ('Ramiel', 'ramiel@email.com', '2003-03-11');

DELETE FROM tb_funcionarios WHERE id = '1';

SELECT * FROM tb_funcionarios_demitidos;