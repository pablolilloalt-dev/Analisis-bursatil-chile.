# Análisis bursátil chileno: rentabilidad y riesgo

Proyecto de análisis de datos sobre 5 acciones de la bolsa chilena (2015–2026): descarga con **Python/yfinance**, modelado y consultas en **SQL (SQLite)** y 3 reportes interactivos en HTML.

## Resultados principales

| Sector | Empresa | Retorno anual aprox. | Volatilidad anual |
|---|---|---|---|
| Banca | Banco de Chile (`CHILE.SN`) | 16,9% | 23,4% |
| Energía | Enel Américas (`ENELAM.SN`) | 1,4% | 26,0% |
| Minería | SQM-B (`SQM-B.SN`) | 21,2% | 41,1% |
| Retail | Cencosud (`CENCOSUD.SN`) | 10,6% | 29,7% |
| Retail | Falabella (`FALABELLA.SN`) | 9,6% | 29,4% |

Retorno = media de retornos diarios sobre precio ajustado × 252. Volatilidad = desviación estándar diaria × √252. Periodo: 2015-01-02 a 2026-10-30.

## Contenido

```
notebooks/01_analisis_bursatil_chile.ipynb   Pipeline completo (Colab)
sql/                                          Consultas y vista de retornos
reports/                                      Reportes interactivos (abrir en el navegador)
  01_rentabilidad_y_riesgo.html
  02_evolucion_precio_ajustado.html
  03_ranking_sectorial.html
data/sample/                                  Muestra pequeña de los datos
```

## Cómo reproducir

1. Abrir `notebooks/01_analisis_bursatil_chile.ipynb` en Google Colab (o Jupyter local, comentando las líneas `files.download`).
2. Ejecutar las celdas en orden. Los datos se descargan de Yahoo Finance; la base `bolsa_chile.db` se genera localmente.

```bash
pip install -r requirements.txt
```

## Limitaciones

- Solo 5 empresas; sin benchmark: `^IPSA` no se pudo descargar desde Yahoo Finance.
- Retorno anual aproximado (media aritmética × 252), no CAGR; sin tasa libre de riesgo ni Sharpe.
- Los datos provienen de Yahoo Finance y no se versionan completos; solo una muestra.
- Análisis educativo; no constituye asesoría de inversión.

## Stack

Python · pandas · yfinance · SQLite · HTML/JS

## Autor

Pablo Lillo Altamirano — Ingeniero Civil Industrial, Ingeniero Eléctrico, Magíster en Ciencia de Datos.
