select v.dni "dni"
from votantes v
where v.fechanacimiento = (select min(v.fechanacimiento) from votantes v
where v.fechanacimiento > (select min(v.fechanacimiento) from votantes v));