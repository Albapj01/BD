select nombrecompleto "nombre"
from votantes, consultas
where consultas.votante = votantes.dni and votantes.situacionlaboral = 'Activo'
group by votantes.nombrecompleto having count(consultas.evento) > avg(consultas.evento);
