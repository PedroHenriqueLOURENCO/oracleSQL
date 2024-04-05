--criar um bloco pl/sql que traga o endereço completo do cliente e o codigo do cliente 

set SERVEROUTPUT on
declare
v_pais pais.nom_pais%type;
v_estado estado.nom_estado%type;
v_cidade cidade.nom_cidade%type;
v_bairro endereco_cliente.des_bairro%type;
v_endereco_cliente endereco_cliente.num_endereco%type;
v_cliente cliente.cod_cliente%type;
begin
select a.nom_pais,
b.nom_estado ,
c.nom_cidade ,
d.des_bairro ,
d.num_endereco ,
e.cod_cliente into v_pais, v_estado, v_cidade,v_bairro, v_endereco_cliente, v_cliente
from pais a
inner join estado b
on (a.cod_pais=b.cod_pais)
inner join cidade c
on (b.cod_estado=c.cod_estado)
inner join endereco_cliente d
on (c.cod_cidade=d.cod_cidade)
inner JOIN cliente e
on (d.cod_cliente=e.cod_cliente)
where a.cod_pais = 4;
dbms_output.put_line ('o codigo de cliente é ' ||v_cliente);
dbms_output.put_line ('endereço cliente é ' ||v_pais || v_estado);
end;

ou 

DECLARE
    v_endereco VARCHAR2(200); -- Assumindo que o endereço completo tem no máximo 200 caracteres
    v_cod_cliente cliente.cod_cliente%TYPE; -- Definindo a variável com o mesmo tipo da coluna cod_cliente da tabela cliente
BEGIN
    -- Aqui você pode atribuir o código do cliente desejado à variável v_cod_cliente
    v_cod_cliente := 1; -- Por exemplo, atribuindo o código do cliente 1

    -- Consulta para obter o endereço completo do cliente com base no código do cliente fornecido
    SELECT des_endereco || ', ' || num_endereco || ', ' || des_complemento || ', ' || des_bairro
    INTO v_endereco
    FROM endereco_cliente
    WHERE cod_cliente = v_cod_cliente;

    -- Exibir o endereço completo do cliente e o código do cliente
    DBMS_OUTPUT.PUT_LINE('Endereço completo do cliente: ' || v_endereco);
    DBMS_OUTPUT.PUT_LINE('Código do cliente: ' || v_cod_cliente);
END;
/
