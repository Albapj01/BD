create or replace trigger trigger_2_lunes_ej2 before update on localidades
for each row
begin 
    if :new.numerohabitantes <1 or :new.numerohabitantes > 4000000 then
        :new.numerohabitantes := :old.numerohabitantes;
    end if;
    
end;

/* Actualización */
update localidades set numerohabitantes = -2 where idlocalidad=1;

select * from localidades;

update localidades set numerohabitantes = 5000 where idlocalidad=1;