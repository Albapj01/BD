select dni "dni", count(votante) "participaciones"
from votantes, consultas
where votantes.dni = consultas.votante
group by dni
order by count(votante) desc;
/*
select votante "dni", count(votante) "participaciones"
from consultas
order by count(votante) desc;
*/