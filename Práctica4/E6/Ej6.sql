set serveroutput on;

declare 
  v_nombrecompleto votantes.nombrecompleto%type;
  v_correo votantes.email%type;
  v2_nombrecompleto votantes.nombrecompleto%type;
  v2_correo votantes.email%type;
begin 
  select nombrecompleto, substr(email, 1, instr(email,'@')) into v_nombrecompleto, v_correo
  from votantes 
  where fechanacimiento = (select min(fechanacimiento) from votantes) ;
  select nombrecompleto, substr(email, 1, instr(email,'@')) into v2_nombrecompleto, v2_correo
  from votantes
  where fechanacimiento = (select max(fechanacimiento) from votantes) ;
  DBMS_OUTPUT.PUT_LINE(v_nombrecompleto || ' -- Email: ' || v_correo || 'uco.es');
  DBMS_OUTPUT.PUT_LINE(v2_nombrecompleto || ' -- Email: ' || v2_correo || 'uco.es');
end;
