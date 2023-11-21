

-- 1. Crear una llave primaria en city (id)
create unique index city_id_uindex
    on city (id);

-- 2. Crear un check en population, para que no soporte negativos
alter table city
    add constraint city_population_check
    check (population >= 0);


-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language
create unique index countrylanguage_countrycode_language_uindex
    on countrylanguage (countrycode, language);


-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100
alter table countrylanguage
    add constraint countrylanguage_percentage_check
    check (percentage >= 0 and percentage <= 100);


