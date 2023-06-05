select nombrecompleto "nombre", localidad "nlocalidad", decode(sign(18-trunc((sysdate-fechanacimiento)/365.43)), 1, ' menor de edad', ' mayor de edad ') "mayoria edad"
from votantes 
where localidad in(2,4,8)
order by localidad asc;

