set serveroutput on;

declare
  cursor c is select * from votantes where dni like concat('%', (localidad+1));
  nRows number := 0;
  
begin 
  for num_row in c loop
  dbms_output.put_line(num_row.nombrecompleto);
  nRows:= nRows+1;
  end loop;
  DBMS_OUTPUT.PUT_LINE('Hay un total de ' || nRows || ' votatnes.');
end;