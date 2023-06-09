select avg(decode(estudiossuperiores, 'Ninguno', 0, 'Basicos', 1, 'Superiores', 2, 'Doctorado', 3)) "Medialocalizacion", l.nombre
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by l.nombre
having avg(decode(estudiossuperiores, 'Ninguno', 0, 'Basicos', 1, 'Superiores', 2, 'Doctorado', 3)) > all
(select avg(decode(estudiossuperiores, 'Ninguno', 0, 'Basicos', 1, 'Superiores', 2, 'Doctorado', 3)) "Mediaprov"
from votantes v, localidades l
where v.localidad = l.idlocalidad
group by provincia)