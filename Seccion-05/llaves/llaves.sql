-- Introduccion a las llaves

-- Para que las relaciones de las DB sean posibles, necesitamos llaves.

-- Sin las llaves o identidad referencinal, no podemos relacionar las tablas.

-- Hay diferentes tipos de llaves:

-- 1. Llave primaria - primary key
-- 2. Llave candidata - candidate key
-- 3. Llave Super - super key
-- 4. Llave foranea - foreign key
-- 5. Llave compuesta - composite key

-- Hay más, y todas sirven para identificar registros. Entre otras: 

-- 6. Llave alterna - alternate key
-- 7. Llave natural - natural key
-- 8. Llave artificial - surrogate key...

-- Llave primaria - primary key
-- Es un campo o conjunto de campos que identifica de forma única a un registro en una tabla. Una tabla puede tener varios identificadores únicos, pero solo uno puede ser la llave primaria. La llave primaria está basada en los requerimientos.

-- Llave candidata - candidate key
-- Es un atributo o conjuto de ellos que identifican de forma única. Menos la llave primaria, el resto se consideran claves candidatas.

-- Llave super - super key
-- Es un conjunto de atributos que puede identificar de forma única. Es un superconjuno de una clave candidata.

-- Llave foranea - foreign key
-- Las llaves foráneas son usadas para apuntar a la llave primaria de otra tabla. Ayudan a conectar dos tablas con una relación. Dben ser del mismo tipo de datos y longitud.

-- Llave compuesta - composite key
-- Cuando una clave primaria consta de más de un atributo, se conoce como clave compuesta.

