
Create database INTICS;
use INTICS;


create table Equipo (
ID_equipo int auto_increment primary key,
Nombre_equipo varchar (70) not null,
Tipo_equipo varchar (50) not null,
ID_hardwareFK int null,
ID_softwareFK int null,
Estado_equipo varchar (30) not null,
ID_registro_de_procesosFK int null
);

create table Usuario (
ID_usuario int auto_increment primary key,
Nombre_usuario varchar (50) not null,
Tipo_usuario varchar (50) not null,
Contraseña varchar (50)not null,
Estado_usuario varchar(30) not null,
ID_equipoFK int null
);

create table Detalle_pertenece (
ID_pertencer int auto_increment primary key,
ID_usuarioFK int null,
ID_equipoFK int null
);

create table Tipo_de_conectividad (
MAC int auto_increment primary key,
Nombre_del_host varchar(50) not null,
Nombre_de_la_red varchar (50) not null,
Tipo_de_la_red varchar (30) not null,
Direccion_IPv4 float not null,
Direccion_Pv6  varchar (50) not null,
Perfil_de_red varchar (50) not null,
Mascara_de_subred float not null,
Tipo_de_nodo varchar (30) not null,
ID_equipoFK int null,
Estado_conectividad int null
);

create table Software (
ID_software int auto_increment primary key,
ID_SOFK int null,
ID_soespFK int null,
ID_antivirusFK int null,
ID_navegadorFK int null,
ID_particionFK int null,
ID_controladorFK int null,
ID_compresor_de_archivosFK int null,
ID_aplicacion_ofimaticaFK int null,
ID_utilidad_de_grabacionFK int null,
ID_lector_pdfFK int null,
ID_congelador_DDFK int null
);

create table Controlador (
ID_Controlador int auto_increment primary key,
Completos_controladores varchar (30) not null,
Incompletos_controladores varchar (30) not null);

create table Lector_PDF (
ID_Lector_PDF int auto_increment primary key,
Nombre_lector_PDF varchar (30) not null,
Version_lector_PDF varchar (30) not null,
Posee_lector_PDF varchar (30) not null);

create table Compresor_de_archivos (
ID_Compresor_de_archivos int auto_increment primary key,
Nombre_comp_archivos varchar (30) not null,
Version_comp_archivos varchar (30) not null,
Posee_comp_archivos varchar (30) not null);

create table Particion_del_disco_duro (
ID_Particion int auto_increment primary key,
N°_Particion int (40) not null);

create table Navegador (
ID_del_navegador int auto_increment primary key,
Nombre_navegador varchar (30) not null,
Version_navegador varchar (30) not null);

 create table Utilidad_de_grabacion (
 ID_Utilidad_de_g int auto_increment primary key,
 Nombre_Utilidades_de_g varchar (30) not null,
 Version_utilidades_de_g varchar (30) not null,
 Posee_utilidades_de_g varchar (30) not null);
 
create table Congelador_DD (
ID_Congelador_DD int auto_increment primary key,
Nombre_congelador varchar (30) not null,
Version_congelador varchar (30) not null,
Posee_congelador varchar (30) not null);

create table Antivirus (
ID_Antivirus int auto_increment primary key,
Nombre_antivirus varchar (30) not null,
Version_antivirus varchar (30) not null,
Posee_antivirus varchar (30) not null);

create table Aplicacion_ofimatica (
ID_App_ofimatica int auto_increment primary key,
Nombre_app_ofimatica varchar (30) not null,
Version_app_ofimatica varchar (30) not null,
Fecha_de_vencimiento datetime not null);

create table SO (
ID_SO int auto_increment primary key,
Nombre_SO varchar (30) not null,
Licencia varchar (30) not null,
Service_pack varchar (30) not null,
Num_nucleos int (30) not null

);

create table Software_especifico (
ID_soesp int auto_increment primary key,
Tipo_software varchar (30) not null,
Version varchar (40) not null,
Licencia varchar (40) not null,
Numero_licencia int (40) not null,
Fecha_activacion datetime not null,
Fecha_vencimiento datetime not null,
Estado_soesp varchar (40) not null
);

create table Hardware (
ID_Hardware int auto_increment primary key,
ID_boardFK int null,
ID_procesadorFK int null,
ID_Tarjeta_de_redFK int null,
ID_Tarjeta_de_videoFK int null,
ID_MouseFK int null,
ID_CamaraFK int null);

create table Mouse (
ID_Mouse int auto_increment primary key,
Marca_mouse varchar (30) not null,
Serial_mouse varchar (30) not null,
Estado_mouse varchar (30) not null);

create table Tarjeta_de_video (
ID_tarjeta_de_video int auto_increment primary key,
Integrada varchar (30) not null,
Tamaño varchar (30) not null);

create table Camara (
ID_Camara int auto_increment primary key,
Integrada varchar (30) not null,
Marca_camara varchar (30) not null);

create table Procesador (
ID_procesador int auto_increment primary key,
Marca_procesador varchar (30) not null,
Nomenclatura varchar (40) not null,
Velocidad int (10) not null,
Numnucleos int (20) not null
);

create table Board (
ID_Board int auto_increment primary key,
Marca_B varchar (30) not null,
Referencia varchar (30) not null,
Tipo_bus varchar (40) not null,
Ancho_bus int (30) not null
);

create table Salida (
ID_salida int auto_increment primary key,
ID_usuarioFK int null,
Fecha_entrega datetime not null,
Estado_actual varchar (30) not null,
ID_equipoFK int null
);

create table Entrada (
ID_entrada int auto_increment primary key,
ID_usuarioFK int null,
Fecha_recibido datetime not null,
Estado_entrada varchar (40) not null,
ID_equipoFK int null
);

create table Registro_de_procesos (
 ID_problema int auto_increment primary key,
 Tipo_de_soporte varchar (30) not null,
 Solucion varchar (40) not null,
 Valor_del_servicio float not null,
 Estado varchar (30) not null
 );

create table Bitacora (
ID_Bitacora int auto_increment primary key,
Fecha_de_ingreso datetime not null,
Fecha_de_salida datetime not null,
Valor_de_servicio varchar (40) not null,
Tipo_de_soporte varchar (40) not null,
Problema_o_requerimiento varchar (40) not null,
Solucion_y_requerimiento varchar (40) not null,
Observaciones varchar (40) not null,
ID_AreaFK int null,
ID_EquipoFK int null);

Create table Area (
ID_Area int auto_increment primary key,
Administracion varchar (30) not null,
Agente_recibe_llamadas varchar (30) not null,
N°_de_la_solicitud varchar (40) not null);
 
alter table Detalle_Pertenece
add constraint FKID_equipoDetalle_Pertenece
foreign key (ID_equipoFK)
references Equipo (ID_equipo);

alter table Detalle_pertenece
add constraint FK_ID_usuarioDetalle_pertenece
foreign key (ID_usuarioFK)
references Usuario (ID_usuario);

alter table Salida
add constraint FKID_usuarioSalida
foreign key (ID_usuarioFK)
references Usuario  (ID_usuario);

alter table Salida
add constraint FKID_equipoSalida
foreign key (ID_equipoFK)
references Equipo (ID_equipo);

alter table Entrada
add constraint FK_ID_usuarioEntrada
foreign key (ID_usuarioFK)
references Usuario (ID_Usuario);

alter table Entrada
add constraint FK_ID_equipoEntrada
foreign key (ID_equipoFK)
references Equipo (ID_equipo);

alter table Equipo
add constraint FKID_hardwareEquipo
foreign key (ID_hardwareFK)
references Hardware (ID_hardware);

alter table Equipo
add constraint FKID_softwareEquipo
foreign key (ID_softwareFK)
references Software (ID_software);

alter table Tipo_de_conectividad
add constraint FK_ID_EquipoTipo_de_conectividad
foreign key (ID_equipoFK)
references Equipo (ID_equipo);

alter table Software
add constraint FKID_soespFKSoftware
foreign key (ID_soespFK)
references Software_especifico (ID_soesp);

alter table Software 
add constraint FKID_SOSoftware
foreign key (ID_SOFK)
references SO (ID_SO);

alter table Hardware
add constraint FKID_Camara
foreign key (ID_CamaraFK)
references Camara (ID_Camara);

alter table Hardware
add constraint FKID_Tarjeta_de_video
foreign key (ID_Tarjeta_de_videoFK)
references Tarjeta_de_video (ID_Tarjeta_de_video);

alter table Hardware
add constraint FKID_Mouse
foreign key (ID_MouseFK)
references Mouse (ID_Mouse);

alter table Hardware
add constraint FKID_Camara_Hardware
foreign key (ID_CamaraFK)
references Camara (ID_Camara);

alter table Hardware
add constraint FKID_board_Hardware
foreign key (ID_boardFK)
references Board (ID_Board);

alter table Hardware
add constraint FKID_Procesador_Hardware
foreign key (ID_procesadorFK)
references procesador (ID_procesador);

alter table Software
add constraint FKID_antivirus_software
foreign key (ID_antivirusFK)
references Antivirus (ID_Antivirus);

alter table Software 
add constraint FKID_navegador_Software
foreign key (ID_navegadorFK)
references navegador (ID_del_navegador);
describe navegador;
alter table Software
add constraint FKID_particion_Software
foreign key (ID_particionFK)
references particion_del_disco_duro (ID_particion);

alter table Software 
add constraint FKID_controlador_Software
foreign key (ID_controladorFK)
references Controlador (ID_controlador);

alter table Software
add constraint FKID_compresor_de_archivos
foreign key (ID_compresor_de_archivosFK)
references Compresor_de_archivos (ID_Compresor_de_archivos);

alter table Software
add constraint FKID_Congelador_DD_software
foreign key (ID_Congelador_DDFK)
references congelador_DD (ID_Congelador_DD);

alter table software
add constraint FKID_aplicaciones_ofimatica
foreign key (ID_aplicacion_ofimaticaFK)
references aplicacion_ofimatica (ID_App_ofimatica);
describe software;
alter table software
add constraint FKID_utilidades_de_grabacion_software
foreign key (ID_utilidad_de_grabacionFK)
references utilidad_de_grabacion (ID_utilidad_de_g);

alter table software
add constraint FKID_lector_pdf_software
foreign key (ID_lector_pdfFK)
references lector_pdf (ID_lector_pdf);

alter table equipo
add constraint FKID_Registro_de_procesos
foreign key (ID_registro_de_procesosFK)
references registro_de_procesos (ID_Problema);

alter table bitacora
add constraint FKID_Equipo
foreign key (ID_EquipoFK)
references Equipo (ID_Equipo);

alter table bitacora
add constraint FKID_Area
foreign key (ID_AreaFK)
references Area (ID_Area);


Show databases; 

describe Equipo; 

describe Usuario; 

describe Detalle_pertenece;

describe Tipo_de_conectividad;

describe Software;

describe SO;

describe Software_especifico;

describe Hardware;

describe Procesador;

describe Board;

describe Salida;

describe Entrada;

describe Registro_de_procesos;

Insert Into Hardware (ID_boardFK, ID_procesadorFK)
Values ( '' '', '' '');  

Insert Into Board (Marca_B, Referencia, Tipo_bus, Ancho_bus)
Values ( 'Msi Mag B550 Tomahawk', 'MSI', '3.0', 2.5);

Insert Into Procesador (Marca_procesador, Nomenclatura, Velocidad, Numnucleos)
Values ( 'AMD', 'Zen 3', '3.0', 3.6, 8);

Insert Into Software (ID_SOFK, ID_soespFK)
Values ( '' '', '' '');

Insert Into SO (Nombre_SO, Licencia, Service_pack, Num_nucleos)
Values ( 'Win 10 Pro', 'Licenciado', 'Activo', 8);

Insert Into Software_especifico (Tipo_software, Version, Licencia, Numero_licencia, Fecha_activacion, Fecha_vencimiento, Estado)
Values ( '64 Bist', '1809', 'cuenta con lincencia', 'VK7JG-NPHTM-C97JM-9MPGT-3V66T', "28/09/2021", "29/010/2024", 'Activo');

Insert Into Usuario (Nombre_usuario, Tipo_usuario, Contraseña, Estado, ID_equipoFK)
Values ( 'Alejandro', 'Cliente', '131236328', 'Activo', '' '');

Insert Into Equipo (Nombre_equipo, Tipo_equipo, ID_hardwareFK, ID_softwareFK, Estado)
Values ( 'Gigabyte Aero 15 Oled Kc', 'Portatil', '' '', '' '', 'Activo');   

Insert Into Detalle_pertenece (ID_usuarioFK, ID_equipoFK)
Values ( '' '', '' '', '' '', '' '', '' '');

Insert Into Tipo_de_conectividad (Nombre_del_host, Nombre_de_la_red, Tipo_de_la_red, Direccion_IPv4, Direccion_Pv6, Perfil_de_red, Mascara_de_subred, Tipo_de_nodo, ID_equipoFK)
Values (  '' '', '' '', '' '', '' '', '' '');

Insert Into Salida (ID_usuarioFK, Fecha_entrega, Estado_actual, ID_equipoFK)
Values (  '' '', '' '', '' '', '' '', '' '');

Insert Into Entrada (ID_usuarioFK, Fecha_recibido, Estado_entrada, ID_equipoFK)
Values (  '' '', '' '', '' '', '' '', '' '');

Insert Into Registro_de_procesos (Tipo_de_soporte, Solucion, Valor_del_servicio, Estado)
Values (  '' '', '' '', '' '', '' '', '' '');
