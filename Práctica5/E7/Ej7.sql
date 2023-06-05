set SERVEROUTPUT ON

declare
  cursor votante is select *
  from votantes 
  where fechanacimiento < '01/01/1980';
  cont number(8) := 0;

begin
  for fila in votante loop
  if fila.situacionlaboral like 'Activo' then
    SYS.DBMS_OUTPUT.PUT_LINE(fila.nombrecompleto);
    insert into votantesAntiguos
    values(fila.dni, fila.nombrecompleto, fila.estudiossuperiores, fila.situacionlaboral, fila.email, fila.localidad, fila.fechanacimiento, fila.telefono, 1500);
    cont := cont+1;
  else
    SYS.DBMS_OUTPUT.PUT_LINE(fila.nombrecompleto);
    insert into votantesAntiguos
    values(fila.dni, fila.nombrecompleto, fila.estudiossuperiores, fila.situacionlaboral, fila.email, fila.localidad, fila.fechanacimiento, fila.telefono, 0);
    cont := cont+1;
  end if;
  end loop;
  SYS.DBMS_OUTPUT.PUT_LINE('Se han insertado un total de '|| cont);
end;