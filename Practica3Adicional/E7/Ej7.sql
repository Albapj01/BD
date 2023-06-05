select nombre "nombre"
from localidades, votantes
where localidades.idlocalidad = votantes.localidad
group by localidades.nombre
order by avg(decode(estudiossuperiores, 'Ninguno', 0, 'Basicos', 1, 'Superirores', 2, 'Doctorado', 3)) desc;
