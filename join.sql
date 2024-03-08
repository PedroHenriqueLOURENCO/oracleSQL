--criar um bloco pl/sql que traga o endereço completo do cliente e o codigo do cliente 

select a.nom_pais pais, b.nom_estado estado, c.nom_cidade cidade, d.des_bairro , d.num_endereco endereco_cliente
from pais a
inner join estado b
on (a.cod_pais=b.cod_pais)
inner join cidade c
on (b.cod_estado=c.cod_estado)
inner join endereco_cliente d
on (c.cod_cidade=d.cod_cidade)
where a.cod_pais = 4;
