/* USUARIOS */

CREATE TABLE usuarios(
    id_usuario serial,
    nombres varchar(32),
    pr_apellido varchar(32),
    sg_apellido varchar(32),
    usuario varchar(32),                                            /* nombre de usuario */
    password varchar(64)
    id_rol int,
    fono_cel varchar(16)
    correo_personal varchar(64),
    foto varchar(64),                                               /* Dirección de la fotografia */    
    turno varchar(32),                                              /* [TARDE, MAÑANA, NOCHE] */      
    estado  boolean
    fecha_registro timestamp default current_timestamp not NULL,
    PRIMARY KEY(id_usuario)
);



/* ROLES */
CREATE TABLE cod_roles(
    id_rol serial,
    descripcion varchar(64),
    permisos json,
    fecha_registro timestamp       default current_timestamp not NULL,
    PRIMARY KEY(id_rol)
);