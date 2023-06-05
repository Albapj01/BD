set serveroutput on;

declare
  cursor votantes is select nombrecompleto, nombre 
  from votantes, localidades 
  where localidades.idlocalidad like decode(votantes.localidad, 1, 9, 2, 9, 3, 9, votantes.localidad);
  cont number(8) := 0;
begin 
  for fila in votantes loop
  
  dbms_output.put_line(fila.nombrecompleto || ' es de ' || fila.nombre);
  if fila.nombre like 'Madrid' then
    cont := cont+1;
  end if;
  end loop;
    dbms_output.put_line('Hay un total de ' || cont || ' votanes en Madrid');
    
end;

