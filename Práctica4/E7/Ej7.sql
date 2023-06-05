set serveroutput on;

declare 
  v_nombrecompleto votantes.nombrecompleto%type;
  v2_nombrecompleto votantes.nombrecompleto%type;

begin 
  select substr(nombrecompleto, instr(nombrecompleto,' ')+1, length(nombrecompleto)) into v_nombrecompleto
  from votantes 
  where fechanacimiento = (select max(fechanacimiento) from votantes where fechanacimiento < (select max(fechanacimiento) from votantes));
  select substr(nombrecompleto, instr(nombrecompleto,' ')+1, length(nombrecompleto)) into v2_nombrecompleto
  from votantes
  where fechanacimiento = (select max(fechanacimiento) from votantes);
  v_nombrecompleto := substr(v_nombrecompleto, 1, instr(v_nombrecompleto, ' ')-1);
  v2_nombrecompleto := substr(v2_nombrecompleto, 1, instr(v2_nombrecompleto, ' ')-1);
  DBMS_OUTPUT.PUT_LINE('El hijo se llama Juan ' || v_nombrecompleto || ' ' || v2_nombrecompleto );
end;

