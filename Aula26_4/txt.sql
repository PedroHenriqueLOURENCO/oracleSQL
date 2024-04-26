--simple procedure 
--insert pais
CREATE OR REPLACE PROCEDURE prd_pais (
    pcod  pais.cod_pais%TYPE,
    pnome pais.nom_pais%TYPE
) AS
BEGIN
    INSERT INTO pais VALUES (
        pcod,
        pnome
    );

    COMMIT;
END;

call prd_pais (422, 'SingapuraLeste');
select * from pais

--insert estado
CREATE OR REPLACE PROCEDURE prd_estado (
    pcod  estado.cod_estado%TYPE,
    pnome estado.nom_estado%TYPE,
    pcod_pais estado.cod_pais%TYPE
) AS
BEGIN
    INSERT INTO estado VALUES (
        pcod,
        pnome,
        pcod_pais
    );
    COMMIT;
END;
--insert cidade
CREATE OR REPLACE PROCEDURE prd_cidade (
    pcod  cidade.cod_cidade%TYPE,
    pnome cidade.nom_cidade%TYPE,
    pcod_estado cidade.cod_estado%TYPE
) AS
BEGIN
    INSERT INTO cidade VALUES (
        pcod,
        pnome,
        pcod_estado
    );
    COMMIT;
END;
