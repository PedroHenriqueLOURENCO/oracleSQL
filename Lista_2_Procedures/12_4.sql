--1 Construa uma função para validar o CEP na inserção do endereço, deverá conter somente valores numéricos.
CREATE OR REPLACE FUNCTION valida_cep (cep in varchar2)
return boolean is
begin
    if length(cep) >3 and regexp_like(cep, '[0-9']) then
       return true;
    else
    return false;
    end if;
end;

--2 – Crie uma procedure para inserir novos clientes, todos os valores deverão ser informados por parâmetros
--e devera ter tratamento de exceção.

create or replace PROCEDURE prc_insere_cliente2 (
    p_cod_cliente IN cliente.cod_cliente%TYPE,
    p_nom_cliente IN cliente.nom_cliente%TYPE,
    p_des_razao_social IN cliente.des_razao_social%TYPE,
    p_tip_pessoa IN cliente.tip_pessoa%TYPE,
    p_num_cpf_cnpj IN cliente.num_cpf_cnpj%TYPE,
    p_dat_cadastro IN cliente.dat_cadastro%TYPE,
    p_dat_cancelamento IN cliente.dat_cancelamento%TYPE,
    p_sta_ativo IN cliente.sta_ativo%TYPE)
IS
DECLARE
minhaexe EXCEPTION;
BEGIN
    IF LENGTH(p_nom_cliente) >= 4 THEN
        INSERT INTO cliente (
            COD_CLIENTE,
            NOM_CLIENTE,
            DES_RAZAO_SOCIAL,
            TIP_PESSOA,
            NUM_CPF_CNPJ,
            DAT_CADASTRO,
            DAT_CANCELAMENTO,
            STA_ATIVO
        ) VALUES (
            p_cod_cliente,
            p_nom_cliente,
            p_des_razao_social,
            p_tip_pessoa,
            p_num_cpf_cnpj,
            p_dat_cadastro,
            p_dat_cancelamento,
            p_sta_ativo
        );
        DBMS_OUTPUT.PUT_LINE('Cliente inserido com sucesso.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O nome deve ter pelo menos 4 caracteres.');
    END IF;

WHEN minhaexe THEN
    raise_application_error(-20024,'execeção');
COMMIT;
END;

--3 Crie um procedure que para atualizar a quantidade de produtos e estoque.
create or replace procedure atualizar_produto_estoque (
    x_COD_PRODUTO IN estoque_produto.cod_produto%type,
    x_COD_ESTOQUE in estoque_produto.cod_estoque%type,
    x_DAT_ESTOQUE in estoque_produto.dat_estoque%type,
    x_QTD_PRODUTO in estoque_produto.qtd_produto%type)
as
begin 
update estoque_produto set QTD_PRODUTO, DAT_ESTOQUE where COD_PRODUTO, COD_ESTOQUE
end;

--4 – Crie uma procedure para deletar um pedido.
create or replace procedure atualizar_produto_estoque (
x_COD_PEDIDO in pedido.COD_PEDIDO)
as
begin 
delete from where cod_pedido=cod_pedido
end;

