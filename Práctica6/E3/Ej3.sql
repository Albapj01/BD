create or replace trigger trigger_2_lunes_ej3 before insert or update on consultas
for each row
begin 
    
    if :new.fecha > sysdate then
        insert into audit_table (datos,tabla) values ('La fehca ' || :new.fecha || ' se ha cambiado por '|| sysdate, 'consultas');
        :new.fecha := sysdate;
    end if;
    
end;

update consultas set fecha=to_date('11/07/2025', 'DD/MM/YYYY') where idconsulta=5;