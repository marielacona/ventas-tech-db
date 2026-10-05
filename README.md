# Ventas Tech DB

## Descripción del proyecto

Este proyecto consiste en la creación de una base de datos relacional para **TechStore**, una cadena de tiendas de tecnología.

El objetivo es diseñar una estructura que permita almacenar y organizar información sobre:

- Categorías de productos.
- Productos disponibles.
- Clientes.
- Ventas realizadas.

La base de datos se desarrolla utilizando **SQL Server**, siguiendo un modelo relacional con claves primarias (PK), claves foráneas (FK), restricciones y tipos de datos adecuados para cada campo.

## Modelo de datos

La base de datos está compuesta por cuatro tablas:

- `categorias`: almacena las diferentes categorías de productos.
- `clientes`: almacena la información de los clientes.
- `productos`: contiene los productos y su relación con una categoría.
- `ventas`: registra las ventas realizadas, relacionando clientes y productos.

Las relaciones principales son:

```text
categorias (1) ──── (N) productos (1) ──── (N) ventas (N) ──── (1) clientes
