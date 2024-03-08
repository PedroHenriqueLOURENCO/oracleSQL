DECLARE
    sexo_cliente CHAR(1) := 'M'; 
    sexo_analisado VARCHAR2(10);
BEGIN
    IF sexo_cliente = 'M' OR sexo_cliente = 'm' THEN
        sexo_analisado := 'Masculino';
    
    ELSIF sexo_cliente = 'F' OR sexo_cliente = 'f' THEN
        sexo_analisado := 'Feminino';
    
    ELSE
        sexo_analisado := 'Outros';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Sexo do cliente: ' || sexo_analisado);
END;
/

----------------------------------------------------------------------------
declare    	
v_carro number(10,2) := 50000 * 0.8;    
v_presta v_carro%type;
v_numero number(2) := 10;
begin 
      if v_numero = 6 then
	    v_presta := (v_carro * 1.1) / 6; 
   	    dbms_output.put_line('Valor da prestação em 6x: '||v_presta); 
       elsif v_numero = 12 then
	    v_presta := (v_carro * 1.15) / 12; 
   	    dbms_output.put_line('Valor da prestação em 12x: '||v_presta);
        elsif v_numero = 18 then
	    v_presta := (v_carro * 1.2) / 18; 
  	    dbms_output.put_line('Valor da prestação em 18x: '||v_presta);
        else	   
	     dbms_output.put_line('Fora de contrato');	
         end if;
end;

-------------------------------------------------------------------------------
--criar um bloco pl/sql que traga o endereço completo do cliente e o codigo do cliente 

