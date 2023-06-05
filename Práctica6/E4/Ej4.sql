alter table votantes add constraint cons_2_lunes_ej4 check(telefono>= 600000000 and telefono <= 799999999);

insert into votantes
values (45657790, 'Ant moya', 'Basicos', 'Estudiante', 'alvadigo@ono.es', 5, '29/08/1999', 0);

insert into votantes
values (45657790, 'Ant moya', 'Basicos', 'Estudiante', 'alvadigo@ono.es', 5, '29/08/1999', 700000000);