length(substr(correo, 1, instr(correo, '@')-1))

substr(correo, 1, instr(correo, '@')-1) like '_%';

/*opcion*/
substr(correo, instr(correo, '@')+1, instr(correo, '@') - instr(correo, '.')-1) like '_%';

/*la mejor opcion*/
alter table votantes add constraint check_correo_2_ej7 check(email like '_%@_%._%');