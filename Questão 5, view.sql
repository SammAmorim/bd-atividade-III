Use VW;

CREATE TABLE pedidos (
  numero_pedido INT AUTO_INCREMENT PRIMARY KEY,
  data_pedido DATE NOT NULL,
  status VARCHAR(255) NOT NULL
);

INSERT INTO pedidos (data_pedido, status) VALUES
('2023-07-07', 'Pendente'),
('2023-05-19', 'Entregue'),
('2023-11-28', 'Pendente'),
('2023-02-11', 'Entrege');

CREATE VIEW vw_pedidos_pendentes AS
SELECT numero_pedido, data_pedido, status
FROM pedidos
WHERE status = 'Pendente';

select * from vw_pedidos_pendentes;