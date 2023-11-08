create database VW;
use VW;

CREATE TABLE funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL,
  departamento VARCHAR(255) NOT NULL
);

INSERT INTO funcionarios (nome, cargo, departamento) VALUES
('Lionel Messi', 'Administrador', 'Administrativo'),
('Cristiano Ronaldo', 'Adminstrador de Cargas', 'Administrativo'),
('Antonie Griezmann', 'Gerente', 'Bradesco'),
('João Félix', 'CEO', 'Petrobras');

CREATE VIEW vw_funcionarios_departamento AS
SELECT nome, cargo
FROM funcionarios
WHERE departamento = 'Administrativo';

select * from vw_funcionarios_departamento;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(255) NOT NULL,
  quantidade_estoque INT NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO produtos (nome_produto, quantidade_estoque, preco) VALUES
('Placa de Vídeo GTX1080', 3, 100.00),
('Mouse', 40, 30.00),
('Processador Ryzen 3', 2, 110.00),
('Processador Ryzen 5', 7, 230.00),
('Processador Ryzen 7', 4, 200.00);

CREATE VIEW vw_estoque_insuficiente AS
SELECT nome_produto, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 5;

select * from vw_estoque_insuficiente;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_vendedor INT
);

INSERT INTO clientes (nome, id_vendedor) VALUES
('Gérman Cano', 1),
('Luís Suarez', 2),
('Neymar Jr', 1),
('Harry Kane', 3);

CREATE TABLE vendedores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

INSERT INTO vendedores (nome) VALUES
('Frenkie de Jong'),
('Memphis Depay'),
('Enzo Férnandez');

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT c.nome AS cliente, v.nome AS vendedor
FROM clientes AS c
JOIN vendedores AS v ON c.id_vendedor = v.id;


select * from vw_relacionamento_cliente_vendedor;

CREATE TABLE pedidos (
  numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
  data_pedido DATE NOT NULL,
  status VARCHAR(255) NOT NULL
);

INSERT INTO pedidos (data_pedido, status) VALUES
('2023-09-12', 'Pendente'),
('2023-05-03', 'Entregue'),
('2023-07-19', 'Pendente'),
('2023-08-08', 'Entrege');

CREATE VIEW vw_produtos_caros AS
SELECT nome_produto, preco
FROM produtos
WHERE preco > 100;

CREATE VIEW vw_pedidos_pendentes AS
SELECT numero_pedido, data_pedido, status
FROM pedidos
WHERE status = 'Pendente';

select * from vw_produtos_caros;
select * from vw_pedidos_pendentes;