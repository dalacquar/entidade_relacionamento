/*
Git: https://github.com/dalacquar/entidade_relacionamento
*/

INSERT INTO CATEGORIA 
	(id, nome, tipo) VALUES
	(1, 'Teclado', 'Membrana'),
    (2, 'Teclado', 'Mecânico'),
    (3, 'Mouse', 'Padrão'),
    (4, 'HeadSet', 'Padrão'),
    (5, 'Gabinete', 'Padrão'),
    (6, 'Fonte', 'Padrão'),
    (7, 'Placa Mãe', 'DDR5'),
    (8, 'Placa Mãe', 'DDR4'),
    (9, 'Placa Mãe', 'DDR3'),
    (10, 'Placa de Video', 'Padrão'),
    (11, 'Memória RAM', 'DDR5'),
    (12, 'Memória RAM', 'DDR4'),
	(13, 'Memória RAM', 'DDR3'),
    (14, 'Processador', 'Padrão'),
    (15, 'Armazenamento', 'HD'),
    (16, 'Armazenamento', 'SSD'),
    (17, 'HeadFone', 'Padrão'),
    (18, 'Fone de Ouvido', 'Padrão'),
    (19, 'Monitor', 'Padrão');
    
INSERT INTO SUBCATEGORIA 
	(id, nome, tipo, id_categoria) VALUES
	(1, 'Gamer', 'Padrão', 1),
    (2, 'Gamer', 'Padrão', 2),
    (3, 'Gamer', 'Padrão', 3),
    (4, 'Gamer', 'Padrão', 4),
    (5, 'RGB', 'Padrão', 1),
    (6, 'RGB', 'Padrão', 2),
    (7, 'RGB', 'Padrão', 3),
    (8, 'RGB', 'Padrão', 4),
    (9, 'Intra-auricular', 'Padrão', 18),
    (10, 'BlueTooth', 'Padrão', 19);
    
INSERT INTO MARCA
	(id, nome, parceria) VALUES 
    (1, 'Razer', 'Sim'),
    (2, 'RedDragon', 'Sim'),
    (3, 'Multilaser', 'Não'),
    (4, 'ASUS', 'Não'),
    (5, 'AOC', 'Não'),
    (6, 'LG', 'Não'),
    (7, 'Kingston', 'Não'),
    (8, 'AMD', 'Não'),
    (9, 'INTEL', 'Sim'),
    (10, 'CORSAIR', 'Sim'),
    (11, 'AORUS', 'Sim'),
	(12, 'NVIDIA', 'Sim');
    

INSERT INTO FORNECEDOR
	(cnpj, nome, telefone) VALUES 
    ('59.166.572/0001-98', 'Tiago Informática', '(44)35448554'),
    ('54.535.081/0001-53', 'Pedro Hardware', '(14)35461145'),
    ('45.987.450/0001-58', 'TechTudo', '(45)35224789'),
    ('03.280.521/0001-38', 'Periféricos Inspiração', '(57)35667474'),
    ('13.853.782/0001-53', 'Capivaras Informática', '(26)35469898'),
    ('48.502.278/0001-93', 'Bones Tecnologia', '(32)35224712'),
    ('15.086.288/0001-36', 'Mazer Distribuidora Ltda', '(68)35984475'),
    ('02.470.715/0001-33', 'Solo Stocks', '(47)35966655'),
    ('09.291.981/0001-48', 'Tecnomídia - Atacado de informática', '(41)35447889'),
    ('49.465.665/0001-60', 'Rede GLM informática', '(12)35226958');
	
INSERT INTO USUARIO
	(id, nome, email, telefone, senha) VALUES 
    (1, 'Rafael', 'rafael@gmail.com', '(44)999856591', 'senha123'),
    (2, 'Marcio', 'marcio@gmail.com', '(44)998754871', '12345678'),
    (3, 'André', 'andre@gmail.com', '(44)996856484', '123senha'),
    (4, 'Jilson', 'jilson@gmail.com', '(44)99746591', 'pneuazul123'),
    (5, 'Jefferson', 'jeff@gmail.com', '(44)999872691', 'musicaclassica'),
    (6, 'Eduarda', 'eduarda@gmail.com', '(44)999871324', 'eduarda2020'),
    (7, 'Pablo', 'pablo@gmail.com', '(44)998474423', 'pablito123'),
    (8, 'Pedro', 'pedro@gmail.com', '(44)997544426', 'gorilasvoadores'),
    (9, 'João', 'joao@gmail.com', '(44)999845622', 'mesademadeira'),
    (10, 'Maria', 'nelson@gmail.com', '(44)998563214', 'contandocarneirinhos');

INSERT INTO ENDERECO
	(id, cep, endereco, numero, complemento, id_usuario) VALUES 
    (1, '87301-899', 'Rua dos Lirios', '487', 'Ao lado da panificadora Pão do céu', 1),
	(2, '87301-899', 'Rua dos Flores', '895', 'Casa Azul da esquina', 2),
    (3, '87301-899', 'Rua Floriano Peixoto', '914', 'Casa com barracão ao lado', 3),
    (4, '87301-899', 'Avenida Francisco Escarpari', '1487', 'Casa de madeira em frente a casa laranja', 4),
    (5, '87301-899', 'Avenida Brasil', '150', 'Casa com telhado rosa', 5),
    (6, '87301-899', 'Avenida Bandeirantes', '185', 'Bloco A, Apartamento 47', 6),
    (7, '87301-899', 'Avenida Irmãos Pereira', '1202', 'Casa com árvore gigante na frente', 7),
    (8, '87301-899', 'Rua Francisco Belardi', '202', 'Prédio azul, apartamento 14', 8),
    (9, '87301-899', 'Rua Antonio Mourin', '185', 'Casa laranja com telhado vermelho', 1),
    (10, '87301-899', 'Rua Abelar Soarez', '12', 'Casa em frente ao bar do João', 2);
    
INSERT INTO PRODUTO
	(id, nome, descricao, preco, id_categoria, id_marca, id_fornecedor) VALUES 
    (1, 'Teclado Mecanico Razer BlackWidow V3 Quartz Chroma Switch Green - RZ03-03541800-R3M1', 'Teclado mecanico Razer, Switch Green, LED, ABNT 2...', 1241.99, 1, 1, '59.166.572/0001-98'),
	(2, 'Mouse Gamer Redragon King Cobra', 'RGB, 8 Botões, 24000DPI - M711-FPS', 159.99, 3, 2, '54.535.081/0001-53'),
    (3, 'Placa de Video GIGABYTE GIGABYTE RADEON RX 6800 XT AORUS MASTER', ', 16GB, GDDR6, 2‎56-BIT, GV-R68XTAORUS M-16GD', 10248.99, 7, 11, '45.987.450/0001-58'),
    (4, 'Monitor Gamer LG Full HD', ' 75Hz, Full HD, 25”, LG, 25UM58G-P, IPS, 2 HDMI', 976.99, 19, 6, '03.280.521/0001-38'),
    (5, 'Monitor AOC', 'Série B1, 24B1XHM, 23,8”', 659.99, 19, 5, '13.853.782/0001-53'),
    (6, 'Memória Corsair Vengeance LPX', '8GB, 2666MHz, DDR4, C16, Preto - CMK8GX4M1A2666C16', 219.99, 12, 5, '48.502.278/0001-93'),
    (7, 'Headset Gamer Razer Kraken Multi Platform', 'P2, Drivers 50mm, Green - RZ04-02830200-R3U1', 419.99, 5, 1, '15.086.288/0001-36'),
    (8, 'Placa de Vídeo Gigabyte NVIDIA GeForce GTX 1050 Ti D5', '4G, GDDR5 - GV-N105TD5-4GD', 1849.99, 10, 12, '02.470.715/0001-33'),
    (9, 'PROCESSADOR INTEL CORE I5-10400', ', 6-CORE, 12-THREADS, 2.9GHZ (4GHZ TURBO), CACHE 12MB, LGA1200, BX8070110400', 999.99, 14, 9, '09.291.981/0001-48'),
    (10, 'PROCESSADOR AMD RYZEN 5 5600X', ' 6-CORE, 12-THREADS, 3.7GHZ (4.6GHZ TURBO), CACHE 35MB, AM4, 100-100000065BOX', 1779.99, 14, 8,'09.291.981/0001-48');

INSERT INTO AVALIACAO 
	(id, nota, titulo, avaliacao, id_produto, id_usuario) VALUES
    (1, 5, 'Bacana', 'Produto muito bom, chegou rápido, tudo que promete, amei', 1, 1),
    (2, 2, 'Demorou muito pra chegar', 'Produto demorou demais para chegar, mais de 3 semanas', 2, 1),
    (3, 1, 'Ruim', 'Odiei, muito caro e não cumpriu minhas espectativas', 3, 2),
    (4, 1, 'Péssimo', 'Horrivel', 4, 2),
    (5, 5, 'Otimo', 'Muito bom', 5, 3),
    (6, 5, 'Perfeito', 'Gostei', 6, 4),
    (7, 5, 'Legal', 'Bem caro porém bom', 7, 5),
    (8, 4, 'Da pro gasto', 'Pelo preço, faz o prometido', 8, 6),
    (9, 3, 'Mais ou menos', 'Achei meio frágil mas é um bom produto', 9, 7),
    (10, 5, 'Adorei', 'Produto muito bom, adorei', 10, 8);

INSERT INTO PEDIDO 
	(id, valor_total, data_entrega, preco, id_endereco, id_usuario) VALUES
    (1, '1241.99',  DATE '2019-10-12', '1241.99', 1, 1),
    (2, '485.99',  DATE '2020-12-14', '485.99', 9, 1),
    (3, '696.99',  DATE '2021-11-18', '696.99', 2, 2),
    (4, '2020.99',  DATE '2020-02-28', '2020.99', 2, 2),
    (5, '4150.99',  DATE '2021-06-25', '4150.99', 3, 3),
    (6, '1820.99',  DATE '2021-06-18', '1820.99', 4, 4),
    (7, '1400.99',  DATE '2021-12-17', '1400.99', 5, 5),
    (8, '121.99',  DATE '2020-04-03', '121.99', 6, 6),
    (9, '458.99',  DATE '2018-01-05', '458.99', 7, 7),
    (10, '458.99',  DATE '2019-01-05', '458.99', 8, 8);

INSERT INTO PRODUTO_PEDIDO 
	(observacao, quant_produto, valor_itens, id_produto, id_pedido) VALUES 
	('N/A', 1, '1241.99', 1, 1),
    ('N/A', 1, '485.99', 2, 2),
    ('N/A', 1, '696.99', 3, 3),
    ('N/A', 1, '2020.99', 4, 4),
    ('N/A', 1, '4150.99', 5, 5),
    ('N/A', 1, '1820.99', 6, 6),
    ('N/A', 1, '1400.99', 7, 7),
    ('N/A', 1, '121.99', 8, 8),
    ('N/A', 1, '458.99', 9, 9),
    ('N/A', 1, '458.99', 10, 10);


select * from endereco;
