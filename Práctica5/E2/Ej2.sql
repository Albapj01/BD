set serveroutput on;

declare
  cursor c is select * from votantes where dni like concat('%', (localidad+1));
  votantesData votantes%rowtype;
  nRows number := 0;
  
begin 
  open c;
  loop
  fetch c into votantesData;
  exit when c%notfound;
  dbms_output.put_line(votantesData.nombrecompleto);
  nRows := nRows +1;
  end loop;
  DBMS_OUTPUT.PUT_LINE('Hay un total de ' || nRows || ' votatnes.');
end;