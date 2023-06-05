set SERVEROUTPUT ON

declare
  cursor dni is select dni 
  from votantes 
  order by dni desc;
  
  dniAntes votantes.dni%type;
  
begin
  for dniAhora in dni loop
  if dniAntes is null then 
  dniAntes := dniAhora.dni;
  else
  dbms_output.put_line(dniAntes || ' va antes que ' || dniAhora.dni);
  dniAntes := dniAhora.dni;
  end if;
  end loop;
  dbms_output.put_line(dniAntes || ' es el menor');
  
end;