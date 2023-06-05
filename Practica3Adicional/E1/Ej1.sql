select substr(v.nombrecompleto, 1, instr(nombrecompleto, ' ')) as nombredepila, l.nombre as nombredelocalidad, p.comunidad as nombredecomunidad
from votantes v, localidades l, provincias p
where v.localidad = l.idlocalidad and l.provincia = p.idprovincia and v.localidad in(1,3,9);