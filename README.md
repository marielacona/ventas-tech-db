# RetailPro — Proyecto de Análisis de Datos Comerciales

## 1. Descripción del proyecto

RetailPro es un proyecto de análisis de datos comerciales desarrollado mediante SQL, cuyo propósito es transformar datos de ventas en información útil para la toma de decisiones de negocio.

El proyecto contempla el análisis de ventas, productos, clientes y regiones, con el objetivo de identificar tendencias comerciales, evaluar el rendimiento de los productos, analizar la evolución de los ingresos y comprender el comportamiento de los clientes.

El desarrollo se realiza de manera progresiva, incorporando consultas SQL, análisis de negocio, integración de datos y visualización de información.

Este repositorio reúne los scripts, consultas y entregables desarrollados durante el proyecto.

## 2. Objetivo general

Desarrollar un análisis de datos comerciales utilizando SQL para identificar patrones de ventas, oportunidades de mejora y tendencias relevantes que permitan comprender el desempeño del negocio y respaldar la toma de decisiones mediante información basada en datos.

### Objetivos específicos

- Identificar los productos con mejor y peor rendimiento comercial.
- Analizar la evolución de las ventas y los ingresos.
- Comparar el desempeño comercial entre regiones.
- Identificar los principales clientes de cada región.
- Integrar información de distintas tablas mediante consultas SQL.
- Preparar los datos para su posterior análisis y visualización.

## 3. Preguntas de negocio

El proyecto busca responder las siguientes preguntas:

### Análisis de productos

- ¿Cuáles son los cinco productos más vendidos y los cinco menos vendidos por región?

### Análisis de ventas e ingresos

- ¿Cómo evolucionaron las ventas durante el último trimestre en comparación con las demás regiones?
- ¿Qué categoría de productos presentó la mayor caída de ingresos durante el último trimestre en la Región Sur?

### Análisis de clientes

- ¿Cuáles son los principales clientes de la Región Sur?
- ¿Qué clientes tienen mayor participación en las ventas del negocio?

Estas preguntas constituyen la base del análisis y orientan el desarrollo de las consultas SQL y los posteriores reportes.

## 4. Herramientas utilizadas

| Herramienta | Uso en el proyecto |
|---|---|
| SQL Server / T-SQL | Creación, consulta e integración de datos mediante SQL. |
| SQL Server Management Studio (SSMS) | Ejecución y validación de consultas SQL. |
| Power BI | Modelado, análisis y visualización de datos. |
| Power Query | Transformación y limpieza de datos durante el proceso ETL. |
| DAX | Creación de medidas para el análisis de indicadores. |
| GitHub | Almacenamiento, documentación y versionado del proyecto. |
| Inteligencia Artificial (IA) | Apoyo en la revisión, documentación y validación técnica de consultas SQL. |

## 5. Estructura del repositorio

El repositorio se encuentra disponible en:

[GitHub — ventas-tech-db](https://github.com/marielacona/ventas-tech-db)

La estructura general del proyecto se organiza de la siguiente manera:

```text
ventas-tech-db/
│
├── RetailPro/
│   ├── [ventas_tech_db.sql]
│   ├── [m4_consultas_negocio.sql]
│   ├── [m5_consulta_joins.sql]
│   └── [Otros entregables del proyecto]
│
├──
│
├── README.md
└── [Otros archivos y entregables]
```

Los nombres de los archivos y las carpetas deberán ajustarse a la estructura real del repositorio.

## 6. Descripción de los scripts SQL

Los scripts SQL desarrollados en el proyecto permiten trabajar con los datos comerciales y responder las preguntas de negocio planteadas.

### Creación y carga de la base de datos

**Archivo:** `ventas_tech_db.sql`

Este script contiene las instrucciones necesarias para crear y preparar la base de datos utilizada en el proyecto.

Sus funciones incluyen:

- Creación de las tablas.
- Definición de las relaciones entre entidades.
- Carga de los datos iniciales.

### Consultas de análisis de negocio — Módulo 4

**Archivo:** `m4_consultas_negocio.sql`  

Este conjunto de consultas permite realizar análisis comerciales sobre los datos disponibles.

Los análisis incluyen:

- Evolución de las ventas.
- Rendimiento de productos.
- Análisis de clientes.
- Comparación de indicadores comerciales.

### Consultas con JOIN — Módulo 5

**Archivo:** `m5_consultas_joins.sql`  

Este script permite integrar información proveniente de distintas tablas mediante operaciones JOIN.

Incluye consultas orientadas a:

- Generar una vista base de ventas, clientes, productos y categorías mediante INNER JOIN.
- Identificar clientes o productos sin ventas mediante LEFT JOIN.
- Integrar resultados de distintas consultas utilizando UNION ALL.

Las consultas permiten enriquecer el análisis y facilitar la interpretación de los datos comerciales.

## 7. Instrucciones para ejecutar los scripts

Para reproducir el análisis, se recomienda seguir los siguientes pasos:

### Requisitos previos

- Contar con una instalación de SQL Server o acceso a una instancia compatible.
- Disponer de SQL Server Management Studio (SSMS) o una herramienta equivalente.
- Tener acceso al repositorio de GitHub.
- Contar con los archivos SQL necesarios para ejecutar el proyecto.

### Procedimiento

1. Acceder al repositorio de GitHub:  
   https://github.com/marielacona/ventas-tech-db

2. Descargar el repositorio mediante la opción **Code → Download ZIP**, o clonarlo utilizando Git.

3. Abrir SQL Server Management Studio.

4. Conectarse a la instancia de SQL Server correspondiente.

5. Ejecutar el script de creación y carga de datos, si corresponde.

6. Verificar que las tablas se hayan creado correctamente y que contengan los datos necesarios para el análisis.

7. Ejecutar los scripts de consultas de negocio y consultas con JOIN.

8. Revisar los resultados obtenidos y validar que respondan a las preguntas de negocio definidas.

9. Si corresponde, utilizar los resultados para continuar con el modelado y la visualización en Power BI.

**Importante:** Los scripts deben ejecutarse respetando las dependencias entre ellos. Antes de ejecutar scripts de creación o carga, verificar si contienen instrucciones que puedan eliminar o sobrescribir datos existentes.

## 8. Resultados esperados

A partir de la ejecución de los scripts SQL, se espera obtener información que permita:

- Identificar los productos con mayor y menor volumen de ventas por región.
- Comparar el rendimiento comercial entre regiones.
- Analizar la evolución de los ingresos durante distintos períodos.
- Identificar las categorías con mayores variaciones en sus ingresos.
- Reconocer los clientes con mayor participación en las ventas de la Región Sur.
- Integrar datos de distintas entidades para facilitar el análisis comercial.

Los resultados obtenidos servirán como base para la elaboración de reportes y dashboards que permitan visualizar los indicadores relevantes del negocio.

Los valores y conclusiones cuantitativas se incorporarán una vez finalizada la ejecución y validación de las consultas.

## 9. Conclusiones

El proyecto RetailPro permite aplicar herramientas de SQL para desarrollar un análisis estructurado de datos comerciales.

A través de la creación de consultas, la integración de información mediante JOIN y la evaluación de indicadores de negocio, se busca transformar los datos disponibles en información relevante para la toma de decisiones.

La documentación y organización de los scripts facilita la reproducibilidad del análisis, la validación de los resultados y la continuidad del proyecto por parte de otros analistas.

El desarrollo de RetailPro constituye una base para profundizar el análisis comercial mediante herramientas de visualización, modelado de datos y generación de indicadores.

Las conclusiones definitivas del análisis se incorporarán una vez que se hayan obtenido y validado los resultados de las consultas de negocio.

---

## Estado del proyecto

**Estado:** En desarrollo.

El proyecto continúa incorporando nuevas consultas, validaciones y entregables de análisis de datos.

Esta documentación se actualizará a medida que se completen nuevas etapas del proyecto.

## Repositorio

[https://github.com/marielacona/ventas-tech-db](https://github.com/marielacona/ventas-tech-db)
