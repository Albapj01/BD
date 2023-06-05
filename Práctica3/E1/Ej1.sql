select nombrecompleto "nombre"
from votantes 
where substr(dni, 8, 8) = (localidad + 1);