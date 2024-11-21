-- creacion de la tabla catalogo_comunal
CREATE TABLE codificacion.catalogo_upa_comunal (
    id_catalogo SERIAL PRIMARY KEY,
    cat_cuest varchar(8), 
    cat_desc text,
    catalogo text,
    codigo text,
    descripcion text,
    estado varchar(16) default 'ACTIVO',
    usucre varchar(64) default 'admin',
    feccre timestamp default now(),
    usumod varchar(64),
    fecmod timestamp,
    descripcion_unida text,
    unico int default 0
);

SELECT * FROM codificacion.catalogo_upa_comunal 




CREATE TABLE codificacion.cod_usuario (
	id_usuario serial,
	nombres varchar,
	pr_apellido varchar(128),
	sg_apellido varchar(128),
	login varchar(128),
	password varchar(128),
	telefono varchar(32),
	imagen varchar (64),
	estado varchar(2) DEFAULT 'A',
	usucre varchar(128),
	fecre timestamp DEFAULT now(),
	usumod varchar(128),
	fecmod timestamp,
	rol_id int2,
	turno varchar(16),
	cod_supvsr int4,
	CONSTRAINT cod_usuario_pkey PRIMARY KEY (id_usuario)
);






-- Insertar datos en la tabla catalogo_upa_comunal

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida) 
values ('UPA', 'TECNOLOGÍAS DE PRECISIÓN', 'cat_207', 'a', 'Sistemas piloto automáticos del tractor', 'sistemaspilotoautomaticosdeltractor');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TECNOLOGÍAS DE PRECISIÓN', 'cat_207', 'b', 'Dron', 'dron');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TECNOLOGÍAS DE PRECISIÓN', 'cat_207', 'c', 'Estación agrometeorológica', 'estacionagrometeorologica');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TECNOLOGÍAS DE PRECISIÓN', 'cat_207', 'd', 'Otro especifique:', 'otroespecifique');




-- cat 8

a	Empresa unipersonal
b	Sociedad Anónima
c	Sociedad de Responsabilidad Limitada
d	Entidad Pública o Estatal
d	Entidad Pública 
d	Entidad Estatal 
e	Cooperativa agropecuaria
f	Organización Económica Campesina (OECA)
f	Organización Económica Campesina
f	OECA
g	Organización Económica Comunitaria (OECOM)
g	Organización Económica Comunitaria
g	OECOM
h	Fundación/Organización no gubernamental (ONG)
h	Fundación
h	Organización no gubernamental
h	ONG
i	Otra Especifique:

-- Insertar datos en la tabla catalogo_upa_comunal

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'a', 'Empresa unipersonal', 'empresaunipersonal');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'b', 'Sociedad Anónima', 'sociedadanonima');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'c', 'Sociedad de Responsabilidad Limitada', 'sociedadderesponsabilidadlimitada');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'd', 'Entidad Pública o Estatal', 'entidadpublicaoestatal');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'd', 'Entidad Pública', 'entidadpublica');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'd', 'Entidad Estatal', 'entidadestatal');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'e', 'Cooperativa agropecuaria', 'cooperativaagropecuaria');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'f', 'Organización Económica Campesina (OECA)', 'organizacioneconomicacampesinaoeca');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'f', 'Organización Económica Campesina', 'organizacioneconomicacampesina');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'f', 'OECOM', 'oecom');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'g', 'Fundación/Organización no gubernamental (ONG)', 'fundaciononororganizacionnogubernamentalong');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'h', 'Fundación', 'fundacion');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'h', 'Organización no gubernamental', 'organizacionnogubernamental');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'h', 'ONG', 'ong');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'TIPO A LA QUE PERTENECE COMO PERSONA JURIDICA', 'cat_8', 'i', 'Otra Especifique:', 'otraespecifique');




-- cat 12
a	Tierra con cultivos temporales
b	Tierra con cultivos permanentes
c	Tierra en descanso (barbecho)
c	barbecho
d	Bosques y/o montes
d	Bosques
d	Montes
e	Pradera nativa (pasto natural)
e	pradera nativa
e	pasto natural
f	Pasto/pradera cultivada 
f	Pasto
f	Pradera cultivada
g	Plantaciones forestales
h	Área utilizada para la acuicultura
i	Infraestructura
i	vivienda del productor y traspatio
i	corrales
i	silos
i	depósitos
i	invernaderos
i	carpas solares
i	viveros
i	walipini
i	incubadoras avícolas
i	Otro uso de suelo 


-- Insertar datos en la tabla catalogo_upa_comunal

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'a', 'Tierra con cultivos temporales', 'tierraconcultivostemporales');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'b', 'Tierra con cultivos permanentes', 'tierraconcultivospermanentes');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'c', 'Tierra en descanso (barbecho)', 'tierraendescansobarbecho');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'c', 'barbecho', 'barbecho');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'd', 'Bosques y/o montes', 'bosquesymontes');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'd', 'Bosques', 'bosques');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'd', 'Montes', 'montes');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'e', 'Pradera nativa (pasto natural)', 'praderanativapastonatural');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'e', 'pradera nativa', 'praderanativa');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'e', 'pasto natural', 'pastonatural');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'f', 'Pasto/pradera cultivada', 'pastopradaracultivada');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'f', 'Pasto', 'pasto');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'f', 'Pradera cultivada', 'praderacultivada');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'g', 'Plantaciones forestales', 'plantacionesforestales');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'h', 'Área utilizada para la acuicultura', 'areautilizadaparalaacuicultura');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'Infraestructura', 'infraestructura');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'vivienda del productor y traspatio', 'viviendadelproductorytraspatio');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'corrales', 'corrales');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'silos', 'silos');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'depósitos', 'depositos');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'invernaderos', 'invernaderos');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'carpas solares', 'carpassolares');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'viveros', 'viveros');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'walipini', 'walipini');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'incubadoras avícolas', 'incubadorasavicolas');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'DISPOSICIÓN DE SUPERFICIE PARA USO DE SUELO', 'cat_12', 'i', 'Otro uso de suelo', 'otrousodesuelo');



-- cat 7 LA COMUNIDAD SE DEFINE COMO

1	Indígena originario campesino
2	 Intercultural
3	Afroboliviana
4	Otro

-- Insertar datos en la tabla catalogo_upa_comunal

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'LA COMUNIDAD SE DEFINE COMO', 'cat_7', '1', 'Indígena originario campesino', 'indigenaoriginariocampesino');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'LA COMUNIDAD SE DEFINE COMO', 'cat_7', '2', 'Intercultural', 'intercultural');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'LA COMUNIDAD SE DEFINE COMO', 'cat_7', '3', 'Afroboliviana', 'afroboliviana');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'LA COMUNIDAD SE DEFINE COMO', 'cat_7', '4', 'Otro', 'otro');



-- cat 14 ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN

a	Producción agrícola
b	Pastoreo
c	Aprovechamiento forestal maderables
d	Aprovechamiento forestal no maderables
e	Aprovechamiento de animales silvestres
f	Acuicultura
g	Apicultura
h	Agrosilvopastoril
i	Otros 


-- Insertar datos en la tabla catalogo_upa_comunal

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'a', 'Producción agrícola', 'produccionagricola');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'b', 'Pastoreo', 'pastoreo');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'c', 'Aprovechamiento forestal maderables', 'aprovechamientoforestalmaderables');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'd', 'Aprovechamiento forestal no maderables', 'aprovechamientoforestalnomaderables');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'e', 'Aprovechamiento de animales silvestres', 'aprovechamientodeanimalessilvestres');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'f', 'Acuicultura', 'acuicultura');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'g', 'Apicultura', 'apicultura');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'h', 'Agrosilvopastoril', 'agrosilvopastoril');

insert into codificacion.catalogo_upa_comunal (cat_cuest, cat_desc, catalogo, codigo, descripcion, descripcion_unida)
values ('UPA', 'ACTIVIDAD QUE REALIZA LA COMUNIDAD EN TIERRAS DE USO COMUN', 'cat_14', 'i', 'Otros', 'otros');


