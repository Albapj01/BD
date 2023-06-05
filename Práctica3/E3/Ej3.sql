select siglas "siglas"
from partidos, eventos_resultados
WHERE partidos.idpartido = eventos_resultados.partido
group by partidos.siglas
having count (eventos_resultados.partido) = (select max(count(eventos_resultados.partido))
from partidos, eventos_resultados
where partidos.idpartido = eventos_resultados.partido
group by partidos.siglas)