USE VW;

CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome_produto VARCHAR(255) NOT NULL,
  quantidade_estoque INT NOT NULL,
  preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO produtos (nome_produto, quantidade_estoque, preco) VALUES
('Placa de Vídeo GTX1080', 5, 140.00),
('Mouse', 40, 30.00),
('Processador Ryzen 3', 10, 200.00),
('Processador Ryzen 5', 10, 150.00),
('Processador Ryzen 7', 10, 300.00);

CREATE VIEW vw_produtos_caros AS
SELECT nome_produto, preco
FROM produtos
WHERE preco > 100;

select * from vw_produtos_caros;