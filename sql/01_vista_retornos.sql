-- Vista de retornos diarios sobre precio ajustado (dividendos y splits)
DROP VIEW IF EXISTS v_retornos;
CREATE VIEW v_retornos AS
SELECT
    ticker,
    fecha,
    cierre_ajustado,
    (cierre_ajustado / LAG(cierre_ajustado) OVER (PARTITION BY ticker ORDER BY fecha)) - 1 AS ret_diario
FROM precios_diarios;
