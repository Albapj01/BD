SELECT nombrecompleto, count(partido) "conteo" 
FROM partidos, consultas_datos 
WHERE partido=idpartido GROUP BY nombrecompleto HAVING COUNT(partido)>10;
