-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_schema | type: SCHEMA --
-- -- DROP SCHEMA IF EXISTS parametros;
CREATE SCHEMA parametros;
-- -- ddl-end --
-- 

-- object: parametros.area_tipo | type: TABLE --
-- DROP TABLE IF EXISTS parametros.area_tipo CASCADE;
CREATE TABLE parametros.area_tipo(
	id serial NOT NULL,
	nombre character varying(100) NOT NULL,
	descripcion character varying(100),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_area_tipo PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE parametros.area_tipo IS 'Tabla que parametriza diferentes areas generales a las que pertenecen un conjunto de tipos de parámetros. Ejemplo: tipo_unidad, area_conocimiento, clasificacion_ciiu';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.id IS 'Identificador unico de la tabla area_tipo';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.nombre IS 'Campo obligatorio de la tabla que indica el nombre del area';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.descripcion IS 'Campo en el que se puede registrar una descripcion de la informacion del area';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere.';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.activo IS 'Valor booleano para indicar si el registro esta activo o inactivo.';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.fecha_creacion IS 'Fecha y hora de la creación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.area_tipo.fecha_modificacion IS 'Fecha y hora de la ultima modificación del registro en la BD.';
-- ddl-end --


-- object: parametros.tipo_parametro | type: TABLE --
-- DROP TABLE IF EXISTS parametros.tipo_parametro CASCADE;
CREATE TABLE parametros.tipo_parametro(
	id serial NOT NULL,
	nombre character varying(100) NOT NULL,
	descripcion character varying(100),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	area_tipo_id integer NOT NULL,
	CONSTRAINT pk_tipo_parametro PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE parametros.tipo_parametro IS 'Tabla que parametriza diferentes tipos generales que englobaN un conjunto de parámetros.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.id IS 'Identificador unico de la tabla tipo_parametro';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.nombre IS 'Campo obligatorio de la tabla que indica el nombre del tipo';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.descripcion IS 'Campo en el que se puede registrar una descripcion de la informacion del tipo';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.activo IS 'Valor booleano para indicar si el registro esta activo o inactivo.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.fecha_creacion IS 'Fecha y hora de la creación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.fecha_modificacion IS 'Fecha y hora de la ultima modificación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.tipo_parametro.area_tipo_id IS 'Referencia foránea a la tabla area_tipo que almacena las areas que engloban los tipos de parámetros';
-- ddl-end --


-- object: parametros.parametro | type: TABLE --
-- DROP TABLE IF EXISTS parametros.parametro CASCADE;
CREATE TABLE parametros.parametro(
	id serial NOT NULL,
	nombre character varying(100) NOT NULL,
	descripcion character varying(100),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	tipo_parametro_id integer NOT NULL,
	parametro_padre_id integer,
	CONSTRAINT pk_parametro PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE parametros.parametro IS 'Tabla que registra los diferentes parámetros. Ejemplo: salario_minimo, punto_salarial.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.id IS 'Identificador unico de la tabla parametro';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.nombre IS 'Campo obligatorio de la tabla que indica el nombre del parametro.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.descripcion IS 'Campo en el que se puede registrar una descripcion de la informacion del parametro.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.activo IS 'Valor booleano para indicar si el registro esta activo o inactivo.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.fecha_creacion IS 'Fecha y hora de la creación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.fecha_modificacion IS 'Fecha y hora de la ultima modificación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.tipo_parametro_id IS 'Referencia foranea a la tabla tipo_parametro que almacena un identificador que engloba un conjunto de parámetros';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro.parametro_padre_id IS 'Referencia foranea al id del párametro padre que se almacena en la misma tabla';
-- ddl-end --


-- object: parametros.periodo | type: TABLE --
-- DROP TABLE IF EXISTS parametros.periodo CASCADE;
CREATE TABLE parametros.periodo(
	id serial NOT NULL,
	nombre character varying(100) NOT NULL,
	descripcion character varying(100),
	year numeric(4,0),
	ciclo character varying(4),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	aplicacion_id integer NOT NULL,
	inicio_vigencia timestamp NOT NULL,
	fin_vigencia timestamp NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_periodo PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE parametros.periodo IS 'Tabla que parametriza los diferentes tipos de periodo asociados a un negocio/aplicacion y al parametro determinado.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.id IS 'Identificador unico de la tabla periodo.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.nombre IS 'Campo obligatorio de la tabla que indica el nombre del periodo.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.descripcion IS 'Campo en el que se puede registrar una descripcion de la informacion del periodo.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.year IS 'Campo que indica el año para el cual es vigente el periodo.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.ciclo IS 'Campo que permite llevar un control de los diferentes periodos que puede tener un año para determiando negocio EJ: Periodos academicos 2020-1, 2020-2, 2020-3.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.activo IS 'Valor booleano para indicar si el registro esta activo o inactivo.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.aplicacion_id IS 'Identificador unico de la tabla aplicacion del esquema configuracion, define el contexto y el negocio en el que se usa el periodo de vigencia.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.inicio_vigencia IS 'Fecha en la que es valido un parametro.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.fin_vigencia IS 'Fecha en la que termina de ser valido un parametro.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.fecha_creacion IS 'Fecha y hora de la creación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.periodo.fecha_modificacion IS 'Fecha y hora de la ultima modificación del registro en la BD.';
-- ddl-end --

CREATE TABLE parametros.parametro_periodo
(
  id serial NOT NULL,
  parametro_id integer NOT NULL,
  periodo_id integer NOT NULL,
  valor json,
  fecha_creacion timestamp with time zone NOT NULL,
  fecha_modificacion timestamp with time zone NOT NULL,
  activo boolean NOT NULL,
  CONSTRAINT pk_parametro_periodo PRIMARY KEY (id)
  
);
-- ddl-end --
COMMENT ON TABLE parametros.parametro_periodo IS 'Tabla que refleja la relación entre los parámetros y su periodo';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.id IS 'Identificador unico de la tabla periodo_parametro.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.parametro_id IS 'Referencia foranea a la tabla parametro que almacena cada párametro';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.periodo_id IS 'Referencia foranea a la tabla periodo que almacena la vigencia de cada párametro';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.valor IS 'Objeto que representa el conjunto de valores que pueden estar asociados a un parámetro. Ej: Porcentaje impuesto, salario mínimo, etc.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.fecha_creacion IS 'Fecha y hora de la creación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.fecha_modificacion IS 'Fecha y hora de la ultima modificación del registro en la BD.';
-- ddl-end --
COMMENT ON COLUMN parametros.parametro_periodo.activo IS 'Valor booleano para indicar si el registro esta activo o inactivo.';
-- ddl-end --


-- CONSTRAINTS

-- object: fk_parametro_padre | type: CONSTRAINT --
-- ALTER TABLE parametros.parametro DROP CONSTRAINT IF EXISTS fk_parametro_padre CASCADE;
ALTER TABLE parametros.parametro ADD CONSTRAINT fk_parametro_padre FOREIGN KEY (parametro_padre_id)
REFERENCES parametros.parametro (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_parametro | type: CONSTRAINT --
-- ALTER TABLE parametros.parametro_periodo DROP CONSTRAINT IF EXISTS fk_periodo CASCADE;
ALTER TABLE parametros.parametro_periodo ADD
CONSTRAINT fk_parametro FOREIGN KEY (parametro_id)
      REFERENCES parametros.parametro (id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL;
-- ddl-end --
      
-- object: fk_periodo | type: CONSTRAINT --
-- ALTER TABLE parametros.parametro_periodo DROP CONSTRAINT IF EXISTS fk_periodo CASCADE;
ALTER TABLE parametros.parametro_periodo ADD      
  CONSTRAINT fk_periodo FOREIGN KEY (periodo_id)
      REFERENCES parametros.periodo (id) MATCH FULL
      ON UPDATE CASCADE ON DELETE SET NULL;
-- ddl-end --

-- object: fk_tipo_parametro | type: CONSTRAINT --
-- ALTER TABLE parametros.parametro DROP CONSTRAINT IF EXISTS fk_tipo_parametro CASCADE;
ALTER TABLE parametros.parametro ADD CONSTRAINT fk_tipo_parametro FOREIGN KEY (tipo_parametro_id)
REFERENCES parametros.tipo_parametro (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_area_tipo | type: CONSTRAINT --
-- ALTER TABLE parametros.tipo_parametro DROP CONSTRAINT IF EXISTS fk_area_tipo CASCADE;
ALTER TABLE parametros.tipo_parametro ADD CONSTRAINT fk_area_tipo FOREIGN KEY (area_tipo_id)
REFERENCES parametros.area_tipo (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

