Repositório para aulas de MASTERING RELATIONAL AND NON-RELATIONAL DATABASE
SET SERVEROUTPUT ON;
-- diferenciar F ou M para masculino e feminino 
declare 
    genero varchar2(2):=&valor;
begin
 if upper (genero) = 'F' then
 dbms_output.put_line('feminino');
 elsif upper (genero) = 'm' then
  dbms_output.put_line('masculino');
else
 dbms_output.put_line('outros');
end if;
end;

--1 - Escreva um bloco PL/SQL que verifique se um número fornecido é par ou ímpar.
set serveroutput on;
declare 
    numero number:=&valor;
begin
 if MOD(numero, 2) = 0 then
 dbms_output.put_line('par');
 ELSE
  dbms_output.put_line('impar');
end if;
end;
---Escreva um bloco PL/SQL que verifique se um número fornecido é positivo, negativo ou zero.
 declare
    v_number number :=&valor;

begin 
    if v_number < 0 then
    dbms_output.put_line('numero é negativo');
elsif v_number > 0 then
    dbms_output.put_line('numero é positivo');
else 
        dbms_output.put_line('numero é 0');
end if;
end;

--Escreva um bloco PL/SQL que classifique uma nota em conceitos (A >= 90, B >= 80, C >= 70, D >= 60, F ) 
--de acordo com uma escala de notas.
set serveroutput on;
declare
    nota number :=&valor;
begin
    if nota >= 90 then
        dbms_output.put_line('NOTA A');
    elsif nota >=80 then
        dbms_output.put_line('NOTA B');
    elsif nota >=70 then
        dbms_output.put_line('NOTA C');
    elsif nota >=60 then
        dbms_output.put_line('NOTA D');
    else 
        dbms_output.put_line('NOTA F');
end if;
end;

-- Dado um determinado valor Verifique  categoria de idade: <= 12 = criança, >= 13 e <=40 adulto e >= 65 idoso
set serveroutput on;
declare
    idade number :=&valor;
begin
    if idade <= 12 then
        dbms_output.put_line('criança');
    elsif idade >=13 and idade <=40 then
        dbms_output.put_line('adulto');
    elsif idade >=65 then
        dbms_output.put_line('idoso');
    else 
        dbms_output.put_line('idade invalida');
end if;
end;




    
