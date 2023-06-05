SELECT idpartido, count(partido) "conteo"
FROM partidos
LEFT JOIN consultas_datos
ON partidos.idpartido=consultas_datos.partido
GROUP BY idpartido;