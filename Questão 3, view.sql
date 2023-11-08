use VW;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_vendedor INT
);

INSERT INTO clientes (nome, id_vendedor) VALUES
('Gérman Cano', 1),
('Luís Suarez', 2),
('Neymar Jr', 1),
('Enzo Férnandez', 3);

CREATE TABLE vendedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

INSERT INTO vendedores (nome) VALUES
('Frenkie de Jong'),
('Memphis Depay'),
('João Félix');

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT c.nome AS cliente, v.nome AS vendedor
FROM clientes AS c
JOIN vendedores AS v ON c.id_vendedor = v.id;


select * from vw_relacionamento_cliente_vendedor;