select l.nombre "nombrelocalidades", l.numerohabitantes "habitantes", p.comunidad "nombrecomunidad"
from localidades l, provincias p
where p.idprovincia = l.provincia and p.idprovincia in (1,2,3) and l.numerohabitantes > any (select numerohabitantes from localidades where provincia = 4);

