Use VW;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(255) NOT NULL,
  quantidade_estoque INT NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO produtos (nome_produto, quantidade_estoque, preco) VALUES
('Placa de Vídeo GTX1080', 3, 120.00),
('Mouse', 8, 40.00),
('Processador Ryzen 3', 2, 100.00),
('Processador Ryzen 5', 7, 350.00),
('Processador Ryzen 7', 4, 450.00);

CREATE VIEW vw_estoque_insuficiente AS
SELECT nome_produto, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 5;

select * from vw_estoque_insuficiente;