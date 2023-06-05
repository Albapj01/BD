alter table eventos disable constraint ck_nombre;

alter table eventos add constraint ck_ej5_2_lunes check(substr(tipo, 1, 1) >= 'A' and substr(tipo,1,1)<='Z' and tipo like '%s');


declare
    tipo varchar2(100);

begin
    tipo:='Holas';
    
    if substr(tipo, 1, 1) >= 'A' and substr(tipo,1,1)<='Z' and substr(tipo, -1, 1) like '%s' then
        dbms_output.put_line('Entra');
    end if;
    
end;