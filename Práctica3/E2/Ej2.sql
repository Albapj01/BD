select nombrecompleto "nombre", nombre "localidad"
from votantes, localidades
where localidades.idlocalidad like decode(votantes.localidad, 1,9,2,9,3,9, votantes.localidad);