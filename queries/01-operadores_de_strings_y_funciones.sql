-- Title: Operadores de strings y funciones

-- 1. Selecciona todos los registros de la tabla users y muestra el nombre en mayúsculas y minúsculas y la longitud del nombre en una columna llamada length y el id y el nombre concatenados en una columna llamada barcode

select
    id,
    upper(name) as upper_name,
    LOWER(name) as lower_name,
    LENGTH(name) as LENGTH,
    '*'||id||'-'||name||'*' as barcode,
    concat('*',id, '-', name, '-'),
    NAME
from
    users;

-- 2. Selecciona los nombres de los usuarios y muestra el primer nombre y el segundo nombre en columnas separadas

select name,
    -- split_part(name, ' ', 1) as first_name,
    -- split_part(name, ' ', 2) as second_name

    -- substring(name, 0, position(' ' in name)) as first_name,
    -- substring(name, position(' ' in name) + 1) as second_name

    substring(name, 0, position(' ' in name)) as first_name,
    trim(substring(name, position(' ' in name))) as trimed_second_name
from users;