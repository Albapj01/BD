set serveroutput on;

declare 
  v_nombrecompleto votantes.nombrecompleto%type;
  v_correo votantes.email%type;

begin 
  select substr(nombrecompleto, 1, instr(nombrecompleto, ' ')), email into v_nombrecompleto, v_correo
  from votantes 
  where dni = 30983712;
  DBMS_OUTPUT.PUT_LINE(v_nombrecompleto || 'con correo: ' || v_correo);
end;