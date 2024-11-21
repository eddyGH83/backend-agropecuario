/* Permisos */
CREATE TABLE rol_permiso(
    id_rol_permiso serial,
    rol varchar(128),
    mod_dashboard boolean,
    mod_vehiculo boolean,
    mod_asignaciones boolean,
    mod_bitacoras boolean,
    mod_mantenimiento boolean,
    mod_usuarios boolean,
    mod_configuraciones boolean,
    mod_reportes boolean,
    mod_usuarios_registro boolean,
    mod_usuarios_roles boolean,
    mod_vehiculo_registro boolean,
    mod_vehiculo_comodato boolean,
    mod_vehiculo_soat boolean,
    mod_vehiculo_sv boolean,
    mod_vehiculo_itv boolean,
    mod_vehiculo_iv boolean,
    mod_asignaciones_accesorios boolean,
    mod_asignaciones_transferencia boolean,
    mod_mantenimiento_registro boolean,
    mod_mantenimiento_presupuesto boolean,
    fecha_registro timestamp       default current_timestamp not NULL,
    PRIMARY KEY(id_rol_permiso)
);


/* Usuarios */
CREATE TABLE usuario(
    id_usuario serial,
    id_rol_permiso int,
    usuario varchar(32),                /* nombre de usuario */                        
    nombres varchar(64),
    apellidos varchar(64),   
    foto varchar(6),                    /* Dirección de la fotografia */    
    correo_institucional text,    
    cargo text,
    proyecto varchar(8),                /* CPV, INE */
    departamental varchar(16),          /* LA PAZ, ORURO..., NACIONAL, INE */
    acceso boolean,                     /*  */    
    fecha_registro timestamp       default current_timestamp not NULL,
    PRIMARY KEY( id_usuario )
);


CREATE TABLE usuarios (
    id_usuario serial,
	nombres varchar(128) ,
    pr_apellidos varchar(128),
	sg_apellidos varchar(128),
	usuario varchar(64),
	pass varchar(128),
	telefono_cel varchar(16),
    correo_personal varchar(64),
	foto varchar(128),
	estado_cuenta boolean,
	usuario_creador int,
	fecha_creacion timestamp default current_timestamp,
	usuario_modificador int,
	fecha_modificacion timestamp default current_timestamp,	
	id_rol int,
	turno varchar(16),
	cod_supervisor int,
	PRIMARY KEY( id_usuario )
);

/* estado varchar DEFAULT 'A'::character varying, */




/* ROLES ************************************************************************/
CREATE TABLE roles (
        id serial,
        descripcion varchar(64),
        codigo varchar(16),
        observacion text,
    fecha_registro timestamp       default current_timestamp not NULL,
        PRIMARY KEY( id)
);

TRUNCATE TABLE roles RESTART IDENTITY

INSERT INTO roles (descripcion, codigo, observacion) VALUES ('ADMINISTRADOR DEL SITIO', 'ADMIN_SIS', '');
INSERT INTO roles (descripcion, codigo, observacion) VALUES ('RESPONSABLE DE CODIFICACION', 'RESP_COD', '');
INSERT INTO roles (descripcion, codigo, observacion) VALUES ('ESPECIALISTA DE CODIFICACION', 'ESP_COD', '');
INSERT INTO roles (descripcion, codigo, observacion) VALUES ('JEFE DE TURNO', 'JEFE_TURNO', '');
INSERT INTO roles (descripcion, codigo, observacion) VALUES ('SUPERVISOR DE CODIFICACION', 'SUP_COD', '');
INSERT INTO roles (descripcion, codigo, observacion) VALUES ('TECNICO EN CODIFICACION', 'TEC_COD', '');