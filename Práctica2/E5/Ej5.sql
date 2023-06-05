select v.nombrecompleto "nombre", p.comunidad "comunidad"
from votantes v, localidades l, provincias p
where l.provincia = p.idprovincia and v.localidad = l.idlocalidad and l.numerohabitantes>300000;