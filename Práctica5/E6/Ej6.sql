set SERVEROUTPUT ON

declare
  cursor votantes is select dni, count(votante) nveces
  from votantes 
  left join consultas on votantes.dni = consultas.votante
  group by dni having count(votante) > (select avg(count(votante)) from consultas group by votante)
  order by count(votante)desc;

begin 
  for fila in votantes loop
  SYS.DBMS_OUTPUT.PUT_LINE(fila.dni || ' ha participado ' || fila.nveces || ' veces');
  end loop;
end;
  