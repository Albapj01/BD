select nombrecompleto "nombre"
from votantes
left join consultas on votantes.dni = consultas.votante
having count(votante) > (select avg(count(votante)) from consultas group by votante)
group by nombrecompleto;
