set serveroutput on;

declare 
  v_nombrecompleto votantes.nombrecompleto%type;
  v_dni votantes.dni%type;

begin 
  select nombrecompleto, dni into v_nombrecompleto, v_dni
  from votantes 
  where fechanacimiento = (select min(fechanacimiento) from votantes) ;
  DBMS_OUTPUT.PUT_LINE('El señor ' || v_nombrecompleto || 'con dni ' || v_dni || ' es el votante mas longevo' );
end;