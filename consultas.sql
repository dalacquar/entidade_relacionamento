/*
Git: https://github.com/dalacquar/entidade_relacionamento
*/

/*Mostra o nome dos produtos os produtos que possuem avaliações*/

SELECT P.nome
FROM produto P, avaliacao A
WHERE P.id = A.id_produto;


/*Mostra o nome dos usuários que compraram teclados*/

SELECT U.nome
FROM usuario U, pedido PE, produto_pedido PP, produto PR, categoria C
WHERE U.id = PE.id_usuario
	AND PE.id = PP.id_pedido
    AND PP.id_produto = PR.id
    AND PR.id_categoria = C.id
    AND C.nome LIKE '%Teclado%';


/*Mostra as avaliações feitas a produtos mais caros que R$1000*/

SELECT A.avaliacao 
FROM avaliacao A
WHERE A.id in ( SELECT P.id
				FROM produto P
                WHERE p.preco > 1000);
                

/*Mostra média dos preços dos produtos da Razer*/

SELECT AVG(p.preco) 
FROM produto P, marca M
WHERE P.id_marca = M.id
	AND M.nome = 'Razer';
    

/*Mostra os nomes dos produtos cujo as avaliações estão acima da média*/

SELECT p.nome
FROM produto p
WHERE p.id IN (SELECT id_produto
				FROM avaliacao
                WHERE nota > (SELECT AVG(nota) 
								FROM avaliacao));
                                

/*Mostra os usuarios que compraram o produto mais caro*/

SELECT U.nome
FROM usuario U
WHERE U.id IN ( SELECT id_usuario
				FROM pedido P
                WHERE p.id in ( SELECT pp.id_pedido
								FROM produto_pedido PP
                                WHERE pp.id_produto in (SELECT PR.id
														FROM produto PR
                                                        WHERE PR.preco = (SELECT MAX(PR2.preco)
														FROM produto PR2
                                                        ))));
                                         
                                         
/*Mostre os produtos que ja foram comprados mais de uma vez*/

SELECT PR.nome
FROM produto PR, usuario U, pedido PE, produto_pedido PP
WHERE U.id = PE.id_usuario
	AND PE.id = PP.id_pedido
    AND PP.id_produto = PR.id
HAVING count(*) > 1;


/*Mostra o nome dos usuários que possuem mais de um endereço*/

SELECT U.nome
FROM usuario U
HAVING 1 < (SELECT count(*)
			FROM endereco E
            WHERE E.id_usuario = U.id);
            
/*Mostre os nomes produtos das marcas que possuem Parceria*/

SELECT P.nome
FROM produto P
WHERE P.id IN ( SELECT M.id
				FROM marca M
                WHERE M.parceria = 'Sim');
                

/*Mostre os nomes produtos das marcas que não possuem Parceria*/

SELECT P.nome
FROM produto P
WHERE P.id NOT IN ( SELECT M.id
				FROM marca M
                WHERE M.parceria = 'Sim');
                




