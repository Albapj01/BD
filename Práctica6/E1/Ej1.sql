create or replace trigger trigger_2_lunes_ej1 after update on eventos
for each row
begin 
    insert into audit_table (datos, tabla) values (:old.nombre || ' ' || :new.nombre , 'eventos');
    
end;

update eventos set nombre = 'Sevilla 2021' where idevento=9;

select * from eventos;

select * from audit_table;