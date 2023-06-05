set SERVEROUTPUT ON;
BEGIN 
  DBMS_OUTPUT.PUT_LINE('Hola mundo, hoy es el dia ' || sysdate);
END;