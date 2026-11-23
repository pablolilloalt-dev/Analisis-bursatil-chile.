-- Top 10 dias por volumen
SELECT ticker, fecha, apertura, maximo, minimo, cierre, volumen
FROM precios_diarios
WHERE volumen IS NOT NULL
ORDER BY volumen DESC
LIMIT 10;

-- Volumen promedio por ticker
SELECT ticker, AVG(volumen) AS volumen_promedio
FROM precios_diarios
GROUP BY ticker
ORDER BY volumen_promedio DESC;
