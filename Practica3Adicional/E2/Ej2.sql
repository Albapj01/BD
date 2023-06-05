select (l.nombre || ' va antes que ' || (select nombre from localidades where idlocalidad = l.idlocalidad+1))
as ordenacion
from localidades l
where l.nombre!= 'Valencia'
order by l.idlocalidad;