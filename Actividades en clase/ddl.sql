CREATE TABLE ejemplo(
	id serial PRIMARY KEY,
	nombre varchar(100) NOT NULL,
	descripcion text,
	precio numeric(10, 2) NOT NULL,
	disponible boolean DEFAULT FALSE,
	fecha_creacion date not null,
	hora_creacion time not null,
	fecha_hora timestamp not null,
	fecha_zona timestamp with time zone,
	duracion interval,
	ip inet,
	mac macaddr,
	punto_geo point,
	datos_json json,
	unico uuid,
	moneda money,
	rangos int4range,
	colores varchar(20)[],
	sexo_seleccionado sexo
);

CREATE TYPE sexo as enum ('Masculino', 'Femenino', 'Otro');

INSERT INTO ejemplo 
VALUES (1, 'María', 'description', 10.23, true, '2025-02-23', '13:10:07',
'2025-02-23 13:10:07', '2025-02-23 13:10:07+05', '1 day', '192.168.1.1', 
'80:00:12:23:10:00', '(10, 20)', '{"key": "value"}', 'f66c844a-fd5b-48c3-8c46-735e41b0a2e6',
'15.23', '[10, 20)', ARRAY['rojo', 'verde', 'azul', 'amarillo'], 
'Femenino');

select * from ejemplo;