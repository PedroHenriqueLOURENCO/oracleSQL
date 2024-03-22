--LOOP
set serveroutput on 
declare
    v_contador number(2):=1; --declara variavel, coloca o valor como 1 
    begin
loop
    dbms_output.put_line(v_contador); --imprimi a variavel 
    v_contador:=v_contador + 1; --incrementa 1 
    exit when v_contador > 20; --loop para quando atinge 20
end loop; 
end;

--WHILE
set serveroutput on 
DECLARE 
V_CONTADOR NUMBER(2):= 1; 
BEGIN 
WHILE V_CONTADOR <= 20 LOOP 
DBMS_OUTPUT.PUT_LINE(V_CONTADOR); 	V_CONTADOR := V_CONTADOR + 1; 
END LOOP; 
END;

--FOR
set serveroutput on 
BEGIN 
FOR V_CONTADOR IN 1..20 LOOP 	DBMS_OUTPUT.PUT_LINE(V_CONTADOR); END LOOP; 
END;


--FOR -REVERSE
set serveroutput on 
BEGIN 
FOR V_CONTADOR IN REVERSE 1..20 LOOP 	
DBMS_OUTPUT.PUT_LINE(V_CONTADOR); END LOOP; 
END;

--ex1 lista 
begin
for x in (
    select * from movimento_estoque 
) loop
    dbms_output.put_line('o numero do produto é:'||x.qtd_movimentacao_estoque)
    end loop;
    end;
