
--CRIAÇÃO DA TABELA
CREATE TABLE TABELA_PROCEDURES (ID_PROCEDURE NUMBER,
NOME_PROCEDURE VARCHAR2(30),
DATA_CRIACAO DATE,
CREATE_USER VARCHAR2(30));

CREATE SEQUENCE SQ_PROCEDURE;
INSERT INTO TABELA_PROCEDURES VALUES(SQ_PROCEDURE.NEXTVAL,'PRIMEIRA PROCEDURE', SYSDATE, 'VERGS');
COMMIT;

SELECT * FROM tabela_procedures

--CRIAÇÃO DA PROCEDURE 

CREATE OR REPLACE PROCEDURE PROCEDURE_INSERT(
V_1 VARCHAR2,
V_2 DATE ,
V_3 VARCHAR2) AS
BEGIN
INSERT INTO TABELA_PROCEDURES VALUES(
SQ_PROCEDURE.NEXTVAL,
V_1,
v_2,
V_3);
COMMIT;
END PROCEDURE_INSERT;

--UTILIZAÇÃO DA PROCEDURE
CALL procedure_insert('procedure delete', sysdate, 'maria');
SELECT * FROM TABELA_PROCEDURES

--CRIA PROCEDURE
CREATE OR REPLACE FUNCTION fun_calcula_fgts (
    p_val NUMBER
) RETURN NUMBER IS

BEGIN
    RETURN p_val * 0.08;
END fun_calcula_fgts;

--CRIA FUNÇÃO
CREATE OR REPLACE PROCEDURE proc2 IS
    v_valor NUMBER;
BEGIN
    v_valor := fun_calcula_fgts(5000);
    dbms_output.put_line('o valor do fgts é:' || to_char(v_valor));
END proc2;

--TRATAMENTO DE EXCEÇÃO

declare 
minhaexe exception;
n NUMBER := 10;

BEGIN
    FOR i IN 1..10 LOOP --range bug... (antes = &i..&n)
        dbms_output.put_line(i * i);
        IF i * 2 = 10 THEN
            RAISE minhaexe;
        END IF;
    END LOOP;
EXCEPTION
    WHEN minhaexe THEN
        raise_application_error(-20015, 'Você caiu na exeção');
END;
