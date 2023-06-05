/*opcion larga*/
alias like '%a%a%' and alias not like '%a%a%a%'

...
cadena in ('gemail'...)

/*opcion corta, hecho rapido, no aseguro que este correcto*/
alter table votantes add constraint check_correo_2_ej7 check(email like '_%@_%._%');

alter table votantes add constraint check_correo_2_ej8 check((email like '_%@hotmail._%' or like '_%@gmail._%' or like '_%@uco._%') and email like '%a%a%@_%' and not email and not like '%a%a%a%@_%' );
