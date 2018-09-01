/*==============================================================*/
/*        GRUPO 5 MODULO DE EXPEDIENTES                         */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_CITA_REFERENCE_SEGURO') then
    alter table CITA
       delete foreign key FK_CITA_REFERENCE_SEGURO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CITA_PAC_REFERENCE_CITA') then
    alter table CITA_PACIENTE
       delete foreign key FK_CITA_PAC_REFERENCE_CITA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CITA_PAC_REFERENCE_PACIENTE') then
    alter table CITA_PACIENTE
       delete foreign key FK_CITA_PAC_REFERENCE_PACIENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COLONIA_REFERENCE_MUNICIPI') then
    alter table COLONIA
       delete foreign key FK_COLONIA_REFERENCE_MUNICIPI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEPARTAM_REFERENCE_PAIS') then
    alter table DEPARTAMENTO
       delete foreign key FK_DEPARTAM_REFERENCE_PAIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIRECCIO_REFERENCE_COLONIA') then
    alter table DIRECCION
       delete foreign key FK_DIRECCIO_REFERENCE_COLONIA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIRECCIO_REFERENCE_ZONA') then
    alter table DIRECCION
       delete foreign key FK_DIRECCIO_REFERENCE_ZONA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIRECCIO_REFERENCE_MUNICIPI') then
    alter table DIRECCION
       delete foreign key FK_DIRECCIO_REFERENCE_MUNICIPI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIRECCIO_REFERENCE_DIRECCIO') then
    alter table DIRECCION_PERSONA
       delete foreign key FK_DIRECCIO_REFERENCE_DIRECCIO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIRECCIO_REFERENCE_PERSONA') then
    alter table DIRECCION_PERSONA
       delete foreign key FK_DIRECCIO_REFERENCE_PERSONA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCUMENT_REFERENCE_TIPO_DOC') then
    alter table DOCUMENTO_PERSONA
       delete foreign key FK_DOCUMENT_REFERENCE_TIPO_DOC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCUMENT_REFERENCE_PERSONA') then
    alter table DOCUMENTO_PERSONA
       delete foreign key FK_DOCUMENT_REFERENCE_PERSONA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ENFERMED_REFERENCE_TIPO_ENF') then
    alter table ENFERMEDAD
       delete foreign key FK_ENFERMED_REFERENCE_TIPO_ENF
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ESPECIAL_REFERENCE_TIPO_ESP') then
    alter table ESPECIALIDAD
       delete foreign key FK_ESPECIAL_REFERENCE_TIPO_ESP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ESPECIAL_REFERENCE_ESPECIAL') then
    alter table ESPECIALIDAD_PACIENTE
       delete foreign key FK_ESPECIAL_REFERENCE_ESPECIAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ESPECIAL_REFERENCE_PACIENTE') then
    alter table ESPECIALIDAD_PACIENTE
       delete foreign key FK_ESPECIAL_REFERENCE_PACIENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HISTORIA_REFERENCE_ENFERMED') then
    alter table HISTORIAL_CLINICO
       delete foreign key FK_HISTORIA_REFERENCE_ENFERMED
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HISTORIA_REFERENCE_ESPECIAL') then
    alter table HISTORIAL_CLINICO
       delete foreign key FK_HISTORIA_REFERENCE_ESPECIAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HISTORIA_REFERENCE_SUSPENSI') then
    alter table HISTORIAL_CLINICO
       delete foreign key FK_HISTORIA_REFERENCE_SUSPENSI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HISTORIA_REFERENCE_TIPO_SAN') then
    alter table HISTORIAL_CLINICO
       delete foreign key FK_HISTORIA_REFERENCE_TIPO_SAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MUNICIPI_REFERENCE_DEPARTAM') then
    alter table MUNICIPIO
       delete foreign key FK_MUNICIPI_REFERENCE_DEPARTAM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MUNICIPI_REFERENCE_PAIS') then
    alter table MUNICIPIO
       delete foreign key FK_MUNICIPI_REFERENCE_PAIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_REFERENCE_SEGURO') then
    alter table PACIENTE
       delete foreign key FK_PACIENTE_REFERENCE_SEGURO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_REFERENCE_PERSONA') then
    alter table PACIENTE
       delete foreign key FK_PACIENTE_REFERENCE_PERSONA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_REFERENCE_HISTORIA') then
    alter table PACIENTE_HISTORIAL
       delete foreign key FK_PACIENTE_REFERENCE_HISTORIA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_REFERENCE_PACIENTE') then
    alter table PACIENTE_HISTORIAL
       delete foreign key FK_PACIENTE_REFERENCE_PACIENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SEGURO_REFERENCE_TIPO_SEG') then
    alter table SEGURO
       delete foreign key FK_SEGURO_REFERENCE_TIPO_SEG
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUSPENSI_REFERENCE_TIPO_SUS') then
    alter table SUSPENSION_MEDICA
       delete foreign key FK_SUSPENSI_REFERENCE_TIPO_SUS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUSPENSI_REFERENCE_SUSPENSI') then
    alter table SUSPENSION_PACIENTE
       delete foreign key FK_SUSPENSI_REFERENCE_SUSPENSI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SUSPENSI_REFERENCE_PACIENTE') then
    alter table SUSPENSION_PACIENTE
       delete foreign key FK_SUSPENSI_REFERENCE_PACIENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TELEFONO_REFERENCE_TIPO_TEL') then
    alter table TELEFONO
       delete foreign key FK_TELEFONO_REFERENCE_TIPO_TEL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TELEFONO_REFERENCE_COMPANIA') then
    alter table TELEFONO
       delete foreign key FK_TELEFONO_REFERENCE_COMPANIA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TELEFONO_REFERENCE_TELEFONO') then
    alter table TELEFONO_PERSONA
       delete foreign key FK_TELEFONO_REFERENCE_TELEFONO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TELEFONO_REFERENCE_PERSONA') then
    alter table TELEFONO_PERSONA
       delete foreign key FK_TELEFONO_REFERENCE_PERSONA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ZONA_REFERENCE_MUNICIPI') then
    alter table ZONA
       delete foreign key FK_ZONA_REFERENCE_MUNICIPI
end if;

drop table if exists CITA;

drop table if exists CITA_PACIENTE;

drop table if exists COLONIA;

drop table if exists COMPANIA_TELEFONO;

drop table if exists DEPARTAMENTO;

drop table if exists DIRECCION;

drop table if exists DIRECCION_PERSONA;

drop table if exists DOCUMENTO_PERSONA;

drop table if exists ENFERMEDAD;

drop table if exists ESPECIALIDAD;

drop table if exists ESPECIALIDAD_PACIENTE;

drop table if exists HISTORIAL_CLINICO;

drop table if exists MUNICIPIO;

drop table if exists PACIENTE;

drop table if exists PACIENTE_HISTORIAL;

drop table if exists PAIS;

drop table if exists PERSONA;

drop table if exists SEGURO;

drop table if exists SUSPENSION_MEDICA;

drop table if exists SUSPENSION_PACIENTE;

drop table if exists TELEFONO;

drop table if exists TELEFONO_PERSONA;

drop table if exists TIPO_DOCUMENTO;

drop table if exists TIPO_ENFERMEDAD;

drop table if exists TIPO_ESPECIALIDAD;

drop table if exists TIPO_SANGRE;

drop table if exists TIPO_SEGURO;

drop table if exists TIPO_SUSPENSION;

drop table if exists TIPO_TELEFONO;

drop table if exists ZONA;

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA 
(
   ID_CITA              integer                        not null,
   ID_SEGURO            integer                        null,
   CITA                 varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_CITA primary key clustered (ID_CITA)
);

/*==============================================================*/
/* Table: CITA_PACIENTE                                         */
/*==============================================================*/
create table CITA_PACIENTE 
(
   ID_CITA              integer                        not null,
   ID_PACIENTE          integer                        not null,
   constraint PK_CITA_PACIENTE primary key clustered (ID_CITA, ID_PACIENTE)
);

/*==============================================================*/
/* Table: COLONIA                                               */
/*==============================================================*/
create table COLONIA 
(
   ID_COLONIA           integer                        not null,
   ID_MUNICIPIO         integer                        null,
   COLONIA              varchar(30)                    null,
   CALLE                varchar(30)                    null,
   EDIFICIO             varchar(30)                    null,
   constraint PK_COLONIA primary key clustered (ID_COLONIA)
);

/*==============================================================*/
/* Table: COMPANIA_TELEFONO                                     */
/*==============================================================*/
create table COMPANIA_TELEFONO 
(
   ID_COMPANIA          integer                        not null,
   COMPANIA             varchar(20)                    null,
   constraint PK_COMPANIA_TELEFONO primary key clustered (ID_COMPANIA)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO 
(
   ID_DEPARTAMENTO      integer                        not null,
   ID_PAIS              integer                        null,
   DEPARTAMENTO         varchar(50)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_DEPARTAMENTO primary key clustered (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION 
(
   ID_DIRECCION         integer                        not null,
   ID_COLONIA           integer                        null,
   ID_ZONA              integer                        null,
   ID_MUNICIPIO         integer                        null,
   FECHA_REGISTRO       date                           null,
   CALLE_AVENIDA        varchar(30)                    null,
   constraint PK_DIRECCION primary key clustered (ID_DIRECCION)
);

/*==============================================================*/
/* Table: DIRECCION_PERSONA                                     */
/*==============================================================*/
create table DIRECCION_PERSONA 
(
   ID_DIRECCION         integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_DIRECCION_PERSONA primary key clustered (ID_DIRECCION, ID_PERSONA)
);

/*==============================================================*/
/* Table: DOCUMENTO_PERSONA                                     */
/*==============================================================*/
create table DOCUMENTO_PERSONA 
(
   ID_TIPO_DOCUMENTO    integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_DOCUMENTO_PERSONA primary key clustered (ID_TIPO_DOCUMENTO, ID_PERSONA)
);

/*==============================================================*/
/* Table: ENFERMEDAD                                            */
/*==============================================================*/
create table ENFERMEDAD 
(
   ID_ENFERMEDAD        integer                        not null,
   ID_TIPO_ENFERMEDAD   integer                        null,
   ENFERMEDAD           varchar(50)                    null,
   USUARIO_REGISTRO     varchar(30)                    null,
   PADECIMIENTOS        varchar(50)                    null,
   constraint PK_ENFERMEDAD primary key clustered (ID_ENFERMEDAD)
);

/*==============================================================*/
/* Table: ESPECIALIDAD                                          */
/*==============================================================*/
create table ESPECIALIDAD 
(
   ID_ESPECIALIDAD      integer                        not null,
   ID_TIPO_ESPECIALIDAD integer                        null,
   ESPECIALIDAD         varchar(50)                    null,
   constraint PK_ESPECIALIDAD primary key clustered (ID_ESPECIALIDAD)
);

/*==============================================================*/
/* Table: ESPECIALIDAD_PACIENTE                                 */
/*==============================================================*/
create table ESPECIALIDAD_PACIENTE 
(
   ID_PACIENTE          integer                        not null,
   ID_ESPECIALIDAD      integer                        not null,
   constraint PK_ESPECIALIDAD_PACIENTE primary key clustered (ID_PACIENTE, ID_ESPECIALIDAD)
);

/*==============================================================*/
/* Table: HISTORIAL_CLINICO                                     */
/*==============================================================*/
create table HISTORIAL_CLINICO 
(
   ID_HISTORIAL_CLINICO integer                        not null,
   ID_TIPO_SANGRE       integer                        null,
   ID_ENFERMEDAD        integer                        null,
   ID_ESPECIALIDAD      integer                        null,
   ID_SUSPENSION        integer                        null,
   VIA_INGRESO          varchar(30)                    null,
   USUARIO_REGISTRO     varchar(30)                    null,
   CLINICA              varchar(50)                    null,
   MOTIVO               varchar(100)                   null,
   constraint PK_HISTORIAL_CLINICO primary key clustered (ID_HISTORIAL_CLINICO)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO 
(
   ID_MUNICIPIO         integer                        not null,
   ID_DEPARTAMENTO      integer                        null,
   ID_PAIS              integer                        null,
   MUNICIPIO            varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_MUNICIPIO primary key clustered (ID_MUNICIPIO)
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE 
(
   ID_PACIENTE          integer                        not null,
   ID_PERSONA           integer                        null,
   ID_SEGURO            integer                        null,
   FECHA_INGRESO        date                           null,
   ANTECEDENTES_MEDICOS varchar(50)                    null,
   ALTURA               numeric(5)                     null,
   PESO_ACTUAL          decimal(4)                     null,
   PESO_ANTERIOR        decimal(4)                     null,
   MEDIDA_CINTURA       numeric(4)                     null,
   MASA_MUSCULAR        decimal(4)                     null,
   PRESION_ARTERIAL     decimal(4)                     null,
   constraint PK_PACIENTE primary key clustered (ID_PACIENTE)
);

/*==============================================================*/
/* Table: PACIENTE_HISTORIAL                                    */
/*==============================================================*/
create table PACIENTE_HISTORIAL 
(
   ID_HISOTORIAL_CLINICO integer                        not null,
   ID_PACIENTE          integer                        not null,
   constraint PK_PACIENTE_HISTORIAL primary key clustered (ID_HISOTORIAL_CLINICO, ID_PACIENTE)
);

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS 
(
   ID_PAIS              integer                        not null,
   PAIS                 varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_PAIS primary key clustered (ID_PAIS)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA 
(
   ID_PERSONA           integer                        not null,
   PRIMER_NOMBRE        varchar(30)                    null,
   SEGUNDO_NOMBRE       varchar(30)                    null,
   PRIMER_APELLIDO      varchar(30)                    null,
   SEGUNDO_APELLIDO     varchar(30)                    null,
   APELLIDO_CASADA      varchar(30)                    null,
   FECHA_NACIMIENTO     date                           null,
   EDAD                 numeric(3)                     null,
   GENERO               varchar(1)                     null,
   constraint PK_PERSONA primary key clustered (ID_PERSONA)
);

/*==============================================================*/
/* Table: SEGURO                                                */
/*==============================================================*/
create table SEGURO 
(
   ID_SEGURO            integer                        not null,
   ID_TIPO_SEGURO       integer                        null,
   SEGURO               varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_SEGURO primary key clustered (ID_SEGURO)
);

/*==============================================================*/
/* Table: SUSPENSION_MEDICA                                     */
/*==============================================================*/
create table SUSPENSION_MEDICA 
(
   ID_SUSPENSION        integer                        not null,
   ID_TIPO_SUSPENSION   integer                        null,
   SUSPENSION           varchar(50)                    null,
   USUARIO_REGISTRO     varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_SUSPENSION_MEDICA primary key clustered (ID_SUSPENSION)
);

/*==============================================================*/
/* Table: SUSPENSION_PACIENTE                                   */
/*==============================================================*/
create table SUSPENSION_PACIENTE 
(
   ID_SUSPENSION        integer                        null,
   ID_PACIENTE          integer                        null
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO 
(
   ID_TELEFONO          integer                        not null,
   ID_TIPO_TELEFONO     integer                        null,
   ID_COMPANIA          integer                        null,
   TELEFONO             numeric(15)                    null,
   constraint PK_TELEFONO primary key clustered (ID_TELEFONO)
);

/*==============================================================*/
/* Table: TELEFONO_PERSONA                                      */
/*==============================================================*/
create table TELEFONO_PERSONA 
(
   ID_TELEFONO          integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_TELEFONO_PERSONA primary key clustered (ID_TELEFONO, ID_PERSONA)
);

/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO 
(
   ID_TIPO_DOCUMENTO    integer                        not null,
   DOCUMENTO            varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   USUARIO_REGISTRO     varchar(30)                    null,
   constraint PK_TIPO_DOCUMENTO primary key clustered (ID_TIPO_DOCUMENTO)
);

/*==============================================================*/
/* Table: TIPO_ENFERMEDAD                                       */
/*==============================================================*/
create table TIPO_ENFERMEDAD 
(
   ID_TIPO_ENFERMEDAD   integer                        not null,
   TIPO_ENFERMEDAD      varchar(50)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_TIPO_ENFERMEDAD primary key clustered (ID_TIPO_ENFERMEDAD)
);

/*==============================================================*/
/* Table: TIPO_ESPECIALIDAD                                     */
/*==============================================================*/
create table TIPO_ESPECIALIDAD 
(
   ID_TIPO_ESPECIALIDAD integer                        not null,
   TIPO_ESPECIALIDAD    varchar(30)                    null,
   DESCRIPCION          varchar(30)                    null,
   constraint PK_TIPO_ESPECIALIDAD primary key clustered (ID_TIPO_ESPECIALIDAD)
);

/*==============================================================*/
/* Table: TIPO_SANGRE                                           */
/*==============================================================*/
create table TIPO_SANGRE 
(
   ID_TIPO_SANGRE       integer                        not null,
   TIPO_SANGRE          varchar(10)                    null,
   USUARIO_REGISTRO     varchar(30)                    null,
   constraint PK_TIPO_SANGRE primary key clustered (ID_TIPO_SANGRE)
);

/*==============================================================*/
/* Table: TIPO_SEGURO                                           */
/*==============================================================*/
create table TIPO_SEGURO 
(
   ID_TIPO_SEGURO       integer                        not null,
   TIPO_SEGURO          varchar(30)                    null,
   constraint PK_TIPO_SEGURO primary key clustered (ID_TIPO_SEGURO)
);

/*==============================================================*/
/* Table: TIPO_SUSPENSION                                       */
/*==============================================================*/
create table TIPO_SUSPENSION 
(
   ID_TIPO_SUSPENSION   integer                        not null,
   TIPO_SUSPENSION      varchar(50)                    null,
   constraint PK_TIPO_SUSPENSION primary key clustered (ID_TIPO_SUSPENSION)
);

/*==============================================================*/
/* Table: TIPO_TELEFONO                                         */
/*==============================================================*/
create table TIPO_TELEFONO 
(
   ID_TIPO_TELEFONO     integer                        not null,
   TIPO_TELEFONO        varchar(50)                    null,
   constraint PK_TIPO_TELEFONO primary key clustered (ID_TIPO_TELEFONO)
);

/*==============================================================*/
/* Table: ZONA                                                  */
/*==============================================================*/
create table ZONA 
(
   ID_ZONA              integer                        not null,
   ID_MUNICIPIO         integer                        null,
   ZONA                 numeric(2)                     null,
   FECHA_REGISTRO       date                           null,
   constraint PK_ZONA primary key clustered (ID_ZONA)
);

alter table CITA
   add constraint FK_CITA_REFERENCE_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on update restrict
      on delete restrict;

alter table CITA_PACIENTE
   add constraint FK_CITA_PAC_REFERENCE_CITA foreign key (ID_CITA)
      references CITA (ID_CITA)
      on update restrict
      on delete restrict;

alter table CITA_PACIENTE
   add constraint FK_CITA_PAC_REFERENCE_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID_PACIENTE)
      on update restrict
      on delete restrict;

alter table COLONIA
   add constraint FK_COLONIA_REFERENCE_MUNICIPI foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO)
      on update restrict
      on delete restrict;

alter table DEPARTAMENTO
   add constraint FK_DEPARTAM_REFERENCE_PAIS foreign key (ID_PAIS)
      references PAIS (ID_PAIS)
      on update restrict
      on delete restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_COLONIA foreign key (ID_COLONIA)
      references COLONIA (ID_COLONIA)
      on update restrict
      on delete restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_ZONA foreign key (ID_ZONA)
      references ZONA (ID_ZONA)
      on update restrict
      on delete restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_MUNICIPI foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO)
      on update restrict
      on delete restrict;

alter table DIRECCION_PERSONA
   add constraint FK_DIRECCIO_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION)
      on update restrict
      on delete restrict;

alter table DIRECCION_PERSONA
   add constraint FK_DIRECCIO_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table DOCUMENTO_PERSONA
   add constraint FK_DOCUMENT_REFERENCE_TIPO_DOC foreign key (ID_TIPO_DOCUMENTO)
      references TIPO_DOCUMENTO (ID_TIPO_DOCUMENTO)
      on update restrict
      on delete restrict;

alter table DOCUMENTO_PERSONA
   add constraint FK_DOCUMENT_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table ENFERMEDAD
   add constraint FK_ENFERMED_REFERENCE_TIPO_ENF foreign key (ID_TIPO_ENFERMEDAD)
      references TIPO_ENFERMEDAD (ID_TIPO_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table ESPECIALIDAD
   add constraint FK_ESPECIAL_REFERENCE_TIPO_ESP foreign key (ID_TIPO_ESPECIALIDAD)
      references TIPO_ESPECIALIDAD (ID_TIPO_ESPECIALIDAD)
      on update restrict
      on delete restrict;

alter table ESPECIALIDAD_PACIENTE
   add constraint FK_ESPECIAL_REFERENCE_ESPECIAL foreign key (ID_ESPECIALIDAD)
      references ESPECIALIDAD (ID_ESPECIALIDAD)
      on update restrict
      on delete restrict;

alter table ESPECIALIDAD_PACIENTE
   add constraint FK_ESPECIAL_REFERENCE_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID_PACIENTE)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_ENFERMED foreign key (ID_ENFERMEDAD)
      references ENFERMEDAD (ID_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_ESPECIAL foreign key (ID_ESPECIALIDAD)
      references ESPECIALIDAD (ID_ESPECIALIDAD)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_SUSPENSI foreign key (ID_SUSPENSION)
      references SUSPENSION_MEDICA (ID_SUSPENSION)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_TIPO_SAN foreign key (ID_TIPO_SANGRE)
      references TIPO_SANGRE (ID_TIPO_SANGRE)
      on update restrict
      on delete restrict;

alter table MUNICIPIO
   add constraint FK_MUNICIPI_REFERENCE_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO)
      on update restrict
      on delete restrict;

alter table MUNICIPIO
   add constraint FK_MUNICIPI_REFERENCE_PAIS foreign key (ID_PAIS)
      references PAIS (ID_PAIS)
      on update restrict
      on delete restrict;

alter table PACIENTE
   add constraint FK_PACIENTE_REFERENCE_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on update restrict
      on delete restrict;

alter table PACIENTE
   add constraint FK_PACIENTE_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table PACIENTE_HISTORIAL
   add constraint FK_PACIENTE_REFERENCE_HISTORIA foreign key (ID_HISOTORIAL_CLINICO)
      references HISTORIAL_CLINICO (ID_HISTORIAL_CLINICO)
      on update restrict
      on delete restrict;

alter table PACIENTE_HISTORIAL
   add constraint FK_PACIENTE_REFERENCE_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID_PACIENTE)
      on update restrict
      on delete restrict;

alter table SEGURO
   add constraint FK_SEGURO_REFERENCE_TIPO_SEG foreign key (ID_TIPO_SEGURO)
      references TIPO_SEGURO (ID_TIPO_SEGURO)
      on update restrict
      on delete restrict;

alter table SUSPENSION_MEDICA
   add constraint FK_SUSPENSI_REFERENCE_TIPO_SUS foreign key (ID_TIPO_SUSPENSION)
      references TIPO_SUSPENSION (ID_TIPO_SUSPENSION)
      on update restrict
      on delete restrict;

alter table SUSPENSION_PACIENTE
   add constraint FK_SUSPENSI_REFERENCE_SUSPENSI foreign key (ID_SUSPENSION)
      references SUSPENSION_MEDICA (ID_SUSPENSION)
      on update restrict
      on delete restrict;

alter table SUSPENSION_PACIENTE
   add constraint FK_SUSPENSI_REFERENCE_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTE (ID_PACIENTE)
      on update restrict
      on delete restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_REFERENCE_TIPO_TEL foreign key (ID_TIPO_TELEFONO)
      references TIPO_TELEFONO (ID_TIPO_TELEFONO)
      on update restrict
      on delete restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_REFERENCE_COMPANIA foreign key (ID_COMPANIA)
      references COMPANIA_TELEFONO (ID_COMPANIA)
      on update restrict
      on delete restrict;

alter table TELEFONO_PERSONA
   add constraint FK_TELEFONO_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO)
      on update restrict
      on delete restrict;

alter table TELEFONO_PERSONA
   add constraint FK_TELEFONO_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table ZONA
   add constraint FK_ZONA_REFERENCE_MUNICIPI foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO)
      on update restrict
      on delete restrict;

/**********************************************************************************