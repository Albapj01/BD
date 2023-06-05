set serveroutput on;

declare 
  v_nombrecompleto votantes.nombrecompleto%type;

begin 
  select substr(nombrecompleto, instr(nombrecompleto,' ')) into v_nombrecompleto
  from votantes 
  where dni = 30983712;
  DBMS_OUTPUT.PUT_LINE( 'Pepe' || v_nombrecompleto );
end;