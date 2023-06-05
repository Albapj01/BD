set serveroutput on;

declare
  habitantes1 localidades.numerohabitantes%type;
  idlo localidades.idlocalidad%type;
  habitantes2 localidades.numerohabitantes%type;
  sumaHabitantes localidades.numerohabitantes%type;
  sumaId number := 0;
  
begin 
  select idlocalidad into idlo
  from localidades 
  where idlocalidad = (select min(idlocalidad) from localidades);
  select numerohabitantes into habitantes1 
  from localidades
  where idlocalidad = (select min(idlocalidad) from localidades);
  select numerohabitantes into habitantes2 
  from localidades
  where idlocalidad = (select min(idlocalidad) from localidades where idlocalidad > idlo);
  
  sumaHabitantes := habitantes1 + habitantes2;
  
  select count(localidades.numerohabitantes) into sumaId from localidades where numerohabitantes>sumaHabitantes;
  
  DBMS_OUTPUT.PUT_LINE('Hay ' || sumaId || ' ciudades con mas habitantes de ' || sumaHabitantes || ' habitantes, que es la suma de las dos localidades con IDs mas pequeños' );
  
end;