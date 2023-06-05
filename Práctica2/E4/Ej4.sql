select v.nombrecompleto "nombre", l.nombre "localidad"
from votantes v, localidades l
where v.localidad = l.idlocalidad and l.numerohabitantes>300000;