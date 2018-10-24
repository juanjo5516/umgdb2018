/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA
(
   ID_CITA              integer                        not null,
   ID_SEGURO            integer                        null,
   CITA                 varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   USUARIO_REGISTRO     varchar(25)                    null,
   FECHA_CITA           date                           null,
   HORA_CITA            time                           null,
   constraint PK_CITA primary key clustered (ID_CITA)
);

/*==============================================================*/
/* Table: CITA_PERSONA                                          */
/*==============================================================*/
create table CITA_PERSONA
(
   ID_CITA              integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_CITA_PERSONA primary key clustered (ID_CITA, ID_PERSONA)
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
   ID_ZONA              integer                        null,
   ID_MUNICIPIO         integer                        null,
   ID_DEPARTAMENTO      integer                        null,
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
/* Table: ENCARGADO_SEDE                                        */
/*==============================================================*/
create table ENCARGADO_SEDE
(
   ID_PERSONA           integer                        null,
   ID_SEDE              INTEGER                        null,
   ID_ENCARGADO_SEDE    char(10)                       null
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
   DESCRIPCION          varchar(500)                   null,
   SOLUCION             varchar(500)                   null,
   FECHA_REGISTRO       date                           null,
   constraint PK_ENFERMEDAD primary key clustered (ID_ENFERMEDAD)
);

/*==============================================================*/
/* Table: EXAMENES                                              */
/*==============================================================*/
create table EXAMENES
(
   ID_EXAMEN            integer                        not null,
   ID_ENFERMEDAD        integer                        null,
   EXAMEN               varchar(100)                   null,
   OBSERVACIONES        varchar(500)                   null,
   constraint PK_EXAMENES primary key clustered (ID_EXAMEN)
);

/*==============================================================*/
/* Table: EXAMEN_PERSONA                                        */
/*==============================================================*/
create table EXAMEN_PERSONA
(
   ID_PERSONA           integer                        not null,
   ID_EXAMEN            integer                        not null,
   constraint PK_EXAMEN_PERSONA primary key clustered (ID_PERSONA, ID_EXAMEN)
);

/*==============================================================*/
/* Table: HISTORIAL_CLINICO                                     */
/*==============================================================*/
create table HISTORIAL_CLINICO
(
   ID_HISTORIAL_CLINICO integer                        not null,
   ID_ENFERMEDAD        integer                        null,
   ID_PERSONA           integer                        null,
   VIA_INGRESO          varchar(30)                    null,
   USUARIO_REGISTRO     varchar(30)                    null,
   CLINICA              varchar(50)                    null,
   OBSERVACIONES        varchar(1000)                  null,
   FECHA_INGRESO        date                           null,
   ALTURA               numeric(5)                     null,
   PESO_ACTUAL          decimal(4)                     null,
   PESO_ANTERIOR        decimal(4)                     null,
   MEDIDA_CINTURA       numeric(4)                     null,
   MASA_MUSCULAR        decimal(4)                     null,
   PRESION_ARTERIAL     decimal(4)                     null,
   FECHA_REGISTRO       date                           null,
   constraint PK_HISTORIAL_CLINICO primary key clustered (ID_HISTORIAL_CLINICO)
);

/*==============================================================*/
/* Table: MOVIMIENTOS_HISTORIAL                                 */
/*==============================================================*/
create table MOVIMIENTOS_HISTORIAL
(
   ID_MOVIMIENTO_HISTORIAL integer                        not null,
   ID_ENFERMEDAD        integer                        null,
   ID_EXAMEN            integer                        null,
   ID_SUSPENSION        integer                        null,
   FALLECIMIENTOS       varchar(50)                    null,
   ALTAS                varchar(50)                    null,
   ALTAS_FECHA          date                           null,
   USUARIO_REGISTRO     varchar(50)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_MOVIMIENTOS_HISTORIAL primary key clustered (ID_MOVIMIENTO_HISTORIAL)
);

/*==============================================================*/
/* Table: MUNICIPIO                                             */
/*==============================================================*/
create table MUNICIPIO
(
   ID_MUNICIPIO         integer                        not null,
   ID_DEPARTAMENTO      integer                        null,
   MUNICIPIO            varchar(30)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_MUNICIPIO primary key clustered (ID_MUNICIPIO)
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
   ID_TELEFONO          integer                        null,
   ID_SEGURO            integer                        null,
   ID_TIPO_SANGRE       integer                        null,
   ID_ROL               integer                        null,
   PRIMER_NOMBRE        varchar(30)                    null,
   SEGUNDO_NOMBRE       varchar(30)                    null,
   PRIMER_APELLIDO      varchar(30)                    null,
   SEGUNDO_APELLIDO     varchar(30)                    null,
   APELLIDO_CASADA      varchar(30)                    null,
   FECHA_NACIMIENTO     date                           null,
   GENERO               varchar(1)                     null,
   constraint PK_PERSONA primary key clustered (ID_PERSONA)
);

/*==============================================================*/
/* Table: PERSONA_HISTORIAL                                     */
/*==============================================================*/
create table PERSONA_HISTORIAL
(
   ID_HISOTORIAL_CLINICO integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_PERSONA_HISTORIAL primary key clustered (ID_HISOTORIAL_CLINICO, ID_PERSONA)
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL
(
   ID_ROL               integer                        not null,
   ROL                  varchar(100)                   null,
   ESTADO               varchar(25)                    null,
   USUARIO_REGISTRO     varchar(25)                    null,
   FECHA_REGISTRO       date                           null,
   constraint PK_ROL primary key clustered (ID_ROL)
);

/*==============================================================*/
/* Table: SEDE                                                  */
/*==============================================================*/
create table SEDE
(
   ID_SEDE              INTEGER                        not null,
   ID_DIRECCION         integer                        null,
   NOMBRE               VARCHAR2(30)                   null,
   constraint PK_SEDE primary key clustered (ID_SEDE)
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
   VIGENCIA_SEGURO      date                           null,
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
   MOTIVO               varchar(500)                   null,
   constraint PK_SUSPENSION_MEDICA primary key clustered (ID_SUSPENSION)
);

/*==============================================================*/
/* Table: SUSPENSION_PERSONA                                    */
/*==============================================================*/
create table SUSPENSION_PERSONA
(
   ID_SUSPENSION        integer                        not null,
   ID_PERSONA           integer                        not null,
   constraint PK_SUSPENSION_PERSONA primary key clustered (ID_SUSPENSION, ID_PERSONA)
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
   ESTADO               varchar(25)                    null,
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
   USUARIO_REGISTRO     varchar(50)                    null,
   ESTADO               varchar(50)                    null,
   constraint PK_TIPO_ENFERMEDAD primary key clustered (ID_TIPO_ENFERMEDAD)
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
/* Table: ZONAS                                                 */
/*==============================================================*/
create table ZONAS
(
   ID_ZONA              integer                        not null,
   ID_COLONIA           integer                        null,
   ZONA                 numeric(2)                     null,
   FECHA_REGISTRO       date                           null,
   USUARIO_REGISTRO     varchar(25)                    null,
   constraint PK_ZONAS primary key clustered (ID_ZONA)
);





/*==============================================================*/
/* Grupo 10                                                     */
/*==============================================================*/


CREATE TABLE "PACIENTE_ODONTOLOGIA" (

"ID_PACIENTE_ODONTOLOGIA" NUMERIC(5,0) NOT NULL,

"ID_PACIENTE" NUMERIC(5,0) NOT NULL,

"ID_MEDICO" NUMERIC(5,0) NOT NULL,

"ID_CLINICA" NUMERIC(5,0) NOT NULL,

PRIMARY KEY ("ID_PACIENTE", "ID_MEDICO", "ID_CLINICA", "ID_PACIENTE_ODONTOLOGIA")

)

NOCOMPRESS

NOPARALLEL ;



CREATE TABLE "MEDICO" (

"ID_MEDICO" NUMERIC(5,0) NOT NULL,

"ID_PERSONA" NUMBER NOT NULL,

"FECHA_INGRESO" DATE NOT NULL,

PRIMARY KEY ("ID_MEDICO", "ID_PERSONA")

)

NOCOMPRESS

NOPARALLEL ;



CREATE TABLE "CLINICA" (

"ID_CLINICA" NUMERIC(5,0) NOT NULL,

"ID_DIRECCION" NUMERIC(5,0) NOT NULL,

"DESCRIPCION" VARCHAR2(2555) NULL,

PRIMARY KEY ("ID_CLINICA", "ID_DIRECCION")

)

NOCOMPRESS

NOPARALLEL ;



CREATE TABLE "DIAGNOSTICO" (

"ID_DIAGNOSTICO" NUMERIC(5,0) NOT NULL,

"ID_PACIENTE" NUMERIC(5,0) NOT NULL,

"ID_HISTORIAL_CLINICO" NUMBER NOT NULL,

"DIAGNOSTICO" VARCHAR2(255) NULL,

"FECHA_REGISTRO" DATE NULL,

"ID_ENFERMEDAD" NUMBER NOT NULL,

PRIMARY KEY ("ID_DIAGNOSTICO", "ID_PACIENTE", "ID_HISTORIAL_CLINICO", "ID_ENFERMEDAD")

)

NOCOMPRESS

NOPARALLEL ;



CREATE TABLE "ESPECIALIDAD_MEDICO" (

"ID_MEDICO" NUMERIC(5,0) NOT NULL,

"ID_ESPECIALIDAD" NUMBER NOT NULL,

"FECHA_REGISTRO" DATE NULL,

PRIMARY KEY ("ID_MEDICO", "ID_ESPECIALIDAD")

)

NOCOMPRESS

NOPARALLEL ;



alter table CITA
   add constraint FK_CITA_REFERENCE_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on update restrict
      on delete restrict;

alter table CITA_PERSONA
   add constraint FK_CITA_PER_REFERENCE_CITA foreign key (ID_CITA)
      references CITA (ID_CITA)
      on update restrict
      on delete restrict;

alter table CITA_PERSONA
   add constraint FK_CITA_PER_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
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
   add constraint FK_DIRECCIO_REFERENCE_ZONAS foreign key (ID_ZONA)
      references ZONAS (ID_ZONA)
      on update restrict
      on delete restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_MUNICIPI foreign key (ID_MUNICIPIO)
      references MUNICIPIO (ID_MUNICIPIO)
      on update restrict
      on delete restrict;

alter table DIRECCION
   add constraint FK_DIRECCIO_REFERENCE_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO)
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

alter table ENCARGADO_SEDE
   add constraint FK_ENCARGAD_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table ENCARGADO_SEDE
   add constraint FK_ENCARGAD_REFERENCE_SEDE foreign key (ID_SEDE)
      references SEDE (ID_SEDE)
      on update restrict
      on delete restrict;

alter table ENFERMEDAD
   add constraint FK_ENFERMED_REFERENCE_TIPO_ENF foreign key (ID_TIPO_ENFERMEDAD)
      references TIPO_ENFERMEDAD (ID_TIPO_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table EXAMENES
   add constraint FK_EXAMENES_REFERENCE_ENFERMED foreign key (ID_ENFERMEDAD)
      references ENFERMEDAD (ID_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table EXAMEN_PERSONA
   add constraint FK_EXAMEN_P_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table EXAMEN_PERSONA
   add constraint FK_EXAMEN_P_REFERENCE_EXAMENES foreign key (ID_EXAMEN)
      references EXAMENES (ID_EXAMEN)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_ENFERMED foreign key (ID_ENFERMEDAD)
      references ENFERMEDAD (ID_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table HISTORIAL_CLINICO
   add constraint FK_HISTORIA_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table MOVIMIENTOS_HISTORIAL
   add constraint FK_MOVIMIEN_REFERENCE_ENFERMED foreign key (ID_ENFERMEDAD)
      references ENFERMEDAD (ID_ENFERMEDAD)
      on update restrict
      on delete restrict;

alter table MOVIMIENTOS_HISTORIAL
   add constraint FK_MOVIMIEN_REFERENCE_EXAMENES foreign key (ID_EXAMEN)
      references EXAMENES (ID_EXAMEN)
      on update restrict
      on delete restrict;

alter table MOVIMIENTOS_HISTORIAL
   add constraint FK_MOVIMIEN_REFERENCE_SUSPENSI foreign key (ID_SUSPENSION)
      references SUSPENSION_MEDICA (ID_SUSPENSION)
      on update restrict
      on delete restrict;

alter table MUNICIPIO
   add constraint FK_MUNICIPI_REFERENCE_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO)
      on update restrict
      on delete restrict;

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_SEGURO foreign key (ID_SEGURO)
      references SEGURO (ID_SEGURO)
      on update restrict
      on delete restrict;

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_TELEFONO foreign key (ID_TELEFONO)
      references TELEFONO (ID_TELEFONO)
      on update restrict
      on delete restrict;

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_ROL foreign key (ID_ROL)
      references ROL (ID_ROL)
      on update restrict
      on delete restrict;

alter table PERSONA
   add constraint FK_PERSONA_REFERENCE_TIPO_SAN foreign key (ID_TIPO_SANGRE)
      references TIPO_SANGRE (ID_TIPO_SANGRE)
      on update restrict
      on delete restrict;

alter table PERSONA_HISTORIAL
   add constraint FK_PERSONA__REFERENCE_HISTORIA foreign key (ID_HISOTORIAL_CLINICO)
      references HISTORIAL_CLINICO (ID_HISTORIAL_CLINICO)
      on update restrict
      on delete restrict;

alter table PERSONA_HISTORIAL
   add constraint FK_PERSONA__REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table SEDE
   add constraint FK_SEDE_REFERENCE_DIRECCIO foreign key (ID_DIRECCION)
      references DIRECCION (ID_DIRECCION)
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

alter table SUSPENSION_PERSONA
   add constraint FK_SUSPENSI_REFERENCE_SUSPENSI foreign key (ID_SUSPENSION)
      references SUSPENSION_MEDICA (ID_SUSPENSION)
      on update restrict
      on delete restrict;

alter table SUSPENSION_PERSONA
   add constraint FK_SUSPENSI_REFERENCE_PERSONA foreign key (ID_PERSONA)
      references PERSONA (ID_PERSONA)
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

alter table ZONAS
   add constraint FK_ZONAS_REFERENCE_COLONIA foreign key (ID_COLONIA)
      references COLONIA (ID_COLONIA)
      on update restrict
      on delete restrict;


ALTER TABLE "MEDICO" ADD CONSTRAINT "FK_MEDICO_PERSONA" FOREIGN KEY ("ID_PERSONA") REFERENCES "PERSONA" ("ID_PERSONA") ON DELETE CASCADE;

ALTER TABLE "CLINICA" ADD CONSTRAINT "FK_CLINICA_CLINICA_1" FOREIGN KEY ("ID_DIRECCION") REFERENCES "DIRECCION_PERSONA" ("ID_DIRECCION") ON DELETE CASCADE;

ALTER TABLE "PACIENTE_ODONTOLOGIA" ADD CONSTRAINT "FK_PACIENTE_ODONTOLOGIA_PACIENTE_ODONTOLOGIA_1" FOREIGN KEY ("ID_CLINICA") REFERENCES "CLINICA" ("ID_CLINICA") ON DELETE CASCADE;

ALTER TABLE "PACIENTE_ODONTOLOGIA" ADD CONSTRAINT "FK_PACIENTE_ODONTOLOGIA_PACIENTE_ODONTOLOGIA_2" FOREIGN KEY ("ID_PACIENTE") REFERENCES "PACIENTE" ("ID_PACIENTE") ON DELETE CASCADE;

ALTER TABLE "PACIENTE_ODONTOLOGIA" ADD CONSTRAINT "FK_PACIENTE_ODONTOLOGIA_PACIENTE_ODONTOLOGIA_3" FOREIGN KEY ("ID_MEDICO") REFERENCES "MEDICO" ("ID_MEDICO") ON DELETE CASCADE;

ALTER TABLE "ESPECIALIDAD_MEDICO" ADD CONSTRAINT "FK_ESPECIALIDAD_MEDICO_ESPECIALIDAD_MEDICO_1" FOREIGN KEY ("ID_MEDICO") REFERENCES "MEDICO" ("ID_MEDICO") ON DELETE CASCADE;

ALTER TABLE "ESPECIALIDAD_MEDICO" ADD CONSTRAINT "FK_ESPECIALIDAD_MEDICO_ESPECIALIDAD_MEDICO_2" FOREIGN KEY ("ID_ESPECIALIDAD") REFERENCES "ESPECIALIDAD" ("ID_ESPECIALIDAD") ON DELETE CASCADE;

ALTER TABLE "DIAGNOSTICO" ADD CONSTRAINT "FK_DIAGNOSTICO_DIAGNOSTICO_1" FOREIGN KEY ("ID_PACIENTE") REFERENCES "PACIENTE_ODONTOLOGIA" ("ID_PACIENTE_ODONTOLOGIA") ON DELETE CASCADE;

ALTER TABLE "DIAGNOSTICO" ADD CONSTRAINT "FK_DIAGNOSTICO_DIAGNOSTICO_2" FOREIGN KEY ("ID_HISTORIAL_CLINICO") REFERENCES "HISTORIAL_CLINICO" ("ID_HISTORIAL_CLINICO") ON DELETE CASCADE;

ALTER TABLE "DIAGNOSTICO" ADD CONSTRAINT "FK_DIAGNOSTICO_DIAGNOSTICO_3" FOREIGN KEY ("ID_ENFERMEDAD") REFERENCES "ENFERMEDAD" ("ID_ENFERMEDAD") ON DELETE CASCADE;