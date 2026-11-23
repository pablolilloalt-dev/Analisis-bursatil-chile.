-- Retorno y volatilidad anualizados por sector/ticker.
-- Volatilidad = desviacion estandar diaria * raiz(252).
-- (SQLite no trae STDDEV ni SQRT por defecto en todas las builds: SQRT se registra desde Python
--  con conexion.create_function("SQRT", 1, math.sqrt); ver el notebook.)
SELECT
    e.sector,
    r.ticker,
    AVG(r.ret_diario) * 252 AS retorno_anual,
    SQRT(SUM((r.ret_diario - p.media) * (r.ret_diario - p.media)) / (COUNT(r.ret_diario) - 1) * 252) AS volatilidad_anual
FROM v_retornos r
JOIN empresas e ON r.ticker = e.ticker
JOIN (SELECT ticker, AVG(ret_diario) AS media FROM v_retornos GROUP BY ticker) p ON r.ticker = p.ticker
WHERE r.ret_diario IS NOT NULL
GROUP BY e.sector, r.ticker
ORDER BY e.sector, retorno_anual DESC;
