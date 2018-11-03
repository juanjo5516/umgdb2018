CREATE TABLE ROL (
    ID_Rol          NUMBER(5)    NOT NULL,
    Nombre          VARCHAR2(50) NOT NULL,
    CONSTRAINT pkID_Rol PRIMARY KEY(ID_Rol)
);

INSERT INTO ROLES VALUES('R1', 'ADMINISTRADOR');
INSERT INTO ROLES VALUES('R2', 'USUARIO_CONSULTOR');


CREATE TABLE Estado (
    ID_Estado       NUMBER(5) NOT NULL,
    Estado          VARCHAR2(50) NOT NULL,
    CONSTRAINT pID_Estado PRIMARY KEY(ID_Estado)
);

INSERT INTO Estado VALUES (1, 'Activo');
INSERT INTO Estado VALUES (2, 'Inactivo');

CREATE SEQUENCE SEQ_DEPTO
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;

CREATE TABLE Departamento (
    ID_Departamento  NUMBER(5) NOT NULL,
    Nombre           VARCHAR2(50) NOT NULL,
    CONSTRAINT pkID_Departamento PRIMARY KEY(ID_Departamento)
);

INSERT INTO Departamento
VALUES (SEQ_DEPTO.NEXTVAL, 'Guatemala');

INSERT INTO Departamento
VALUES (SEQ_DEPTO.NEXTVAL, 'Izabal');

INSERT INTO Departamento
VALUES (SEQ_DEPTO.NEXTVAL, 'Escuintla');


CREATE SEQUENCE SEQ_MUNICIPIO
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;

CREATE TABLE Municipio (
    ID_Municipio     NUMBER(5)    NOT NULL,
    Municipio        VARCHAR2(50) NOT NULL,
    ID_Departamento  NUMBER(5)    NOT NULL,
    CONSTRAINT pkID_Municipio    PRIMARY KEY(ID_Municipio),
    CONSTRAINT fkID_Departamento FOREIGN KEY(ID_Departamento) REFERENCES Departamento (ID_Departamento),
    
);

INSERT INTO Municipio 
VALUES (SEQ_MUNICIPIO.NEXTVAL, 'Guatemala', 1);

INSERT INTO Municipio 
VALUES (SEQ_MUNICIPIO.NEXTVAL, 'San José Pínula', 1);

INSERT INTO Municipio 
VALUES (SEQ_MUNICIPIO.NEXTVAL, 'Villa Nueva', 1);



CREATE SEQUENCE SEQ_PERSONA
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;

CREATE TABLE Persona(
ID_Persona         NUMBER(14)   NOT NULL,
Cui                NUMBER(14)   NOT NULL,
PrimerNombre       VARCHAR2(50) NOT NULL, 
SegundoNombre      VARCHAR2(50),
PrimerApellido     VARCHAR2(50) NOT NULL,
SegundoApellido    VARCHAR2(50),
FechaNacimiento    DATE         NOT NULL,
Correo             VARCHAR2(50) NOT NULL,
Teléfono           NUMBER(8),
Dirección          VARCHAR(100)  NOT NULL,
CONSTRAINT pkID_Persona PRIMARY KEY (ID_Persona),
CONSTRAINT ukCui        UNIQUE      (Cui)
);
		
INSERT INTO PERSONA(IDPERSONA, CUI, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, CORREO, TELEFONO, DIRECCION)
VALUES (SEQ_PERSONA.NEXTVAL, 1901232410101, 'FRANCISCO', 'ARTURO', 'GOMEZ', 'HERNANDEZ', TO_DATE('01/01/1990', 'DD/MM/YY'), 'HJHILUG.COM', '66643991', 'kM 19.3 San José Pinula');
		
INSERT INTO PERSONA(IDPERSONA, CUI, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, FECHA_NACIMIENTO, CORREO)
VALUES (SEQ_PERSONA.NEXTVAL, 2888256530103, 'ANA', 'LUCIA', 'RUIZ', 'OSORIO', TO_DATE('05/12/1995', 'DD/MM/YY'), 'HHGCYV.COM', '41526374', 'Ciudad de Guatemala, Zona 9');
        
        
CREATE SEQUENCE SEQ_HORARIO
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;


CREATE TABLE Horario (
    ID_Horario   NUMBER(5)NOT NULL,
    Entrada      VARCHAR2(14) NOT NULL,
    Salida       VARCHAR2(14) NOT NULL,
    CONSTRAINT pkID_Horario PRIMARY KEY (ID_Horario )
);

INSERT INTO Horario
VALUES (SEQ_HORARIO.NEXTVAL, '07:00 am', '5:00 pm');

INSERT INTO Horario
VALUES (SEQ_HORARIO.NEXTVAL, '09:00 am', '7:00 pm');

CREATE SEQUENCE SEQ_CARGO
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;


CREATE TABLE Cargo (
    ID_Cargo     NUMBER(5)NOT NULL,
    Nombre       VARCHAR2(50) NOT NULL,
    Funciones    VARCHAR2(150) NOT NULL,
    CONSTRAINT pkID_Cargo PRIMARY KEY (ID_Cargo )
);

INSERT INTO Cargo
VALUES (SEQ_CARGO.NEXTVAL, 'Supervisor', 'Supervisar sucursales, departamentos');

INSERT INTO Cargo
VALUES (SEQ_CARGO.NEXTVAL, 'Medico', 'Realizar consultas, atender pacientes');


CREATE SEQUENCE SEQ_EMPLEADOS
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;

CREATE TABLE Empleados (
    ID_Empleado     NUMBER(5)NOT NULL,
    ID_Persona      NUMBER(5)NOT NULL,
    ID_Cargo        NUMBER(5)NOT NULL,
    ID_Horario      NUMBER(5)NOT NULL,
    SUELDO          NUMBER(10,2),
    CONSTRAINT pkID_Empleado     PRIMARY KEY(ID_Empleado ),
    CONSTRAINT fkID_Persona_Emp  FOREIGN KEY(ID_Persona) REFERENCES Persona(ID_Persona),
    CONSTRAINT fkID_Cargo_Emp    FOREIGN KEY(ID_Cargo)   REFERENCES Cargo  (ID_Cargo),
    CONSTRAINT fkID_Horario_Emp  FOREIGN KEY(ID_Horario) REFERENCES Horario(ID_Horario),
);

INSERT INTO Empleados
VALUES (SEQ_EMPLEADOS.NEXTVAL, 1, 1, 2, '9000.00');

INSERT INTO Empleados
VALUES (SEQ_EMPLEADOS.NEXTVAL, 2, 2, 1, '7000.00');



CREATE SEQUENCE SEQ_USUARIOS
START WITH 1
MAXVALUE 99999999
MINVALUE 1
NOCYCLE
CACHE 20
NOORDER;


CREATE TABLE Usuario (
    ID_Usuario      NUMBER(5)NOT NULL,
    ID_Empleado     NUMBER(5)NOT NULL,
    Usuario         VARCHAR(50) NOT NULL,
    Contraseña      VARCHAR(14) NOT NULL, 
    ID_Rol          NUMBER(5)NOT NULL,
    ID_Estado       NUMBER(5)NOT NULL,
    CONSTRAINT pkID_Usuarios      PRIMARY KEY(ID_Usuario),
    CONSTRAINT fkID_Empleado_User FOREIGN KEY(ID_Empleado) REFERENCES Empleado(ID_Empleado),
    CONSTRAINT fkID_Rol_User      FOREIGN KEY(ID_Rol)      REFERENCES Rol     (ID_Rol),
    CONSTRAINT fkID_Estado_User   FOREIGN KEY(ID_Estado)   REFERENCES Estado  (ID_Estado)
);

INSERT INTO Usuarios VALUES (SEQ_USUARIOS.NEXTVAL, 1, 'fgomez', '123', 1, 1);
INSERT INTO Usuarios VALUES (SEQ_USUARIOS.NEXTVAL, 2, 'aruiz', 'Aruiz1', 2, 1);
INSERT INTO Usuarios VALUES (SEQ_USUARIOS.NEXTVAL, 2, 'aruiz', 'Aruiz1', 2, 1); --USUARIO REPETIDO



--TRIGGER PARA EVITAR USUARIOS DUPLICADOS
CREATE OR REPLACE TRIGGER trgUsuarios
BEFORE INSERT on Usuario
FOR EACH ROW --por cada fila que se haga en la transacción
DECLARE
        existe VARCHAR2(10);
        error_Usuarios EXCEPTION;
BEGIN
SELECT Usuario
            INTO existe
            FROM Usuario
            WHERE Usuario = :NEW.Usuario;

            IF  (:NEW.Usuario = existe) THEN
                RAISE ERROR_Usuarios;
                -- Raise_Application_Error(-20099,'USUARIO YA EXISTE');
            END IF;
        
            EXCEPTION 
            WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.PUT_LINE ('NUEVO USUARIO AGREGADO CORRECTAMENTE');
            
            WHEN error_Usuarios THEN
            RAISE_APPLICATION_ERROR(-20004, 'YA EXISTE UN USUARIO IGUAL');
end trgUsuarios;

--TRIGGER PARA EVITAR PERSONA DUPLICADAS
CREATE OR REPLACE TRIGGER trgPersona
BEFORE INSERT on Persona
FOR EACH ROW --por cada fila que se haga en la transacción
DECLARE
        existe VARCHAR2(10);
        error_Persona EXCEPTION;
BEGIN
SELECT Cui
            INTO existe
            FROM Persona
            WHERE Cui = :NEW.Cui;

            IF  (:NEW.Cui = existe) THEN
                RAISE ERROR_Persona;
                -- Raise_Application_Error(-20099,'PERSONA YA EXISTE');
            END IF;
        
            EXCEPTION 
            WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.PUT_LINE ('NUEVA PERSONA AGREGADA CORRECTAMENTE');
            
            WHEN error_Persona THEN
            RAISE_APPLICATION_ERROR(-20004, 'YA EXISTE UNA PERSONA CON ESE DOC. DE IDENTIFICACION');
end trgPersona;


--TRIGGER PARA EVITAR EMPLEADOS DUPLICADOS
CREATE OR REPLACE TRIGGER trgEmpleados
BEFORE INSERT on Empleado
FOR EACH ROW --por cada fila que se haga en la transacción
DECLARE
        existe VARCHAR2(10);
        error_Empleado EXCEPTION;
BEGIN
SELECT ID_Persona
            INTO existe
            FROM Empleado
            WHERE ID_Persona = :NEW.ID_Persona;

            IF  (:NEW.ID_Persona = existe) THEN
                RAISE ERROR_Empleado;
            END IF;
        
            EXCEPTION 
            WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.PUT_LINE ('NUEVO EMPLEADO AGREGADO CORRECTAMENTE');
            
            WHEN error_Persona THEN
            RAISE_APPLICATION_ERROR(-20004, 'YA EXISTE UN EMPLEADO CON LA PERSONA DE REFERENCIA');
end trgEmpleado;

 
--CHEQUEAR EL HORARIO
CREATE OR REPLACE TRIGGER SEGURIDAD_HORARIO
 BEFORE
 INSERT OR UPDATE OR DELETE ON Empleado
 BEGIN
     IF NOT( TO_CHAR (SYSDATE, 'HH24:MI') BETWEEN '08:00' AND '18:00')
        AND ( TO_CHAR(SYSDATE, 'D') IN ( '7'/*Sabado*/,'2'/*Domingo*/)) THEN
            RAISE_APPLICATION_ERROR(-20000,'Solo es posible realizar cambios en
        horario normal de oficina'); 
 END IF;
 END SEGURIDAD_HORARIO;

CREATE OR REPLACE TRIGGER SEGURIDAD_HORARIO_usuarios
 BEFORE
 INSERT OR UPDATE OR DELETE ON Usuario
 BEGIN
     IF NOT( TO_CHAR (SYSDATE, 'HH24:MI') BETWEEN '07:00' AND ':00')
        AND ( TO_CHAR(SYSDATE, 'D') IN ( '7'/*Sabado*/,'2'/*Domingo*/)) THEN
            RAISE_APPLICATION_ERROR(-20000,'Solo es posible realizar cambios en
        horario normal de oficina'); 
 END IF;
 END SEGURIDAD_HORARIO_usuarios;



