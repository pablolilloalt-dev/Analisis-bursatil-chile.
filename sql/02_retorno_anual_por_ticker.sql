-- Retorno anual aproximado (media diaria * 252) por ticker y año
SELECT ticker, STRFTIME('%Y', fecha) AS anio, AVG(ret_diario) * 252 AS retorno_anual_aprox
FROM v_retornos
WHERE ret_diario IS NOT NULL
GROUP BY ticker, anio
ORDER BY ticker, anio;
