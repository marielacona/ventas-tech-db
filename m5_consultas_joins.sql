USE VentasTechDB
-- =========================================
-- Consulta 1: Vista base del proyecto (INNER JOIN)
-- Propósito: combinar ventas con clientes, productos
-- y categorías para preparar la fuente de datos de Power BI.

SELECT 
    v.id_venta,
    c.nombre,
    p.nombre_producto,
    cat.nombre_categoría,
    v.cantidad,
    v.precio_unitario
FROM dbo.Ventas AS v
INNER JOIN dbo.Clientes AS c 
    ON v.id_cliente = c.id_cliente
INNER JOIN dbo.Productos AS p 
    ON v.id_producto = p.id_producto
INNER JOIN dbo.Categoría AS cat 
    ON p.id_categoria = cat.id_categoría;


-- Hallazgo: se obtuvieron 10 ventas enriquecidas con datos
-- descriptivos, si todas las relaciones tienen coincidencias.

-- =========================================
-- Consulta 2: Clientes sin ventas (LEFT JOIN)
-- Propósito: identificar clientes sin compras para que
-- el área de CRM evalúe acciones de contacto.

SELECT
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes AS c
LEFT JOIN ventas AS v
    ON c.id_cliente = v.id_cliente
WHERE v.id_cliente IS NULL;

-- Hallazgo: no se esperan clientes sin compras, ya que
-- en M4 los cinco clientes registrados tenían dos pedidos cada uno.

-- =========================================
-- Consulta 3: Productos sin ventas (LEFT JOIN)
-- Propósito: identificar artículos sin movimiento para
-- que el área de producto evalúe el catálogo.

SELECT
    p.nombre_producto,
    cat.nombre_categoría AS categoria,
    p.precio
FROM productos AS p
LEFT JOIN ventas AS v
    ON p.id_producto = v.id_producto
LEFT JOIN Categoría AS cat
    ON p.id_categoria = cat.id_categoría
WHERE v.id_producto IS NULL;

-- Hallazgo: comprobar si el producto 4 no registra ventas;
-- si se confirma, producto puede evaluar su demanda y promoción.

-- =========================================
-- Consulta 4: Consolidado por grupo (UNION ALL)
-- Propósito: comparar la facturación de dos grupos de ventas.

SELECT
    canal,
    SUM(total) AS total_canal
FROM (
    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Grupo 1' AS canal
    FROM ventas
    WHERE id_venta BETWEEN 1 AND 5

    UNION ALL

    SELECT
        fecha_venta,
        cantidad * precio_unitario AS total,
        'Grupo 2' AS canal
    FROM ventas
    WHERE id_venta >= 6
) AS consolidado
GROUP BY canal;

-- Hallazgo: completar con la facturación de cada grupo
-- e indicar cuál generó el mayor importe.