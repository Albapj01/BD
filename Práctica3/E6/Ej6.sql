select dni "dni", count(votante) "participaciones"
from votantes
left join consultas on votantes.dni = consultas.votante
having count(votante) > (select avg(count(votante)) from consultas group by votante)
group by dni
order by count(votante) desc;
