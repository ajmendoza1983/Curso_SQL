-- Creacion de las tablas segun el diagrama en StarMLUAfilxEmpresa

CREATE TABLE Estado_Maestro (
  Num_Tipo_Doc INT PRIMARY KEY,
  Abreviatura_Tip_Doc NVARCHAR(2) NOT NULL
);

INSERT INTO Estado_Maestro (Num_Tipo_Doc, Abreviatura_Tip_Doc) VALUES
(1, 'CE'), (2, 'TI'), (3, 'CC'), (4, 'NI'), (5, 'RC'), (6, 'PS'), (7, 'CN'), (8, 'PT');

CREATE TABLE AfilxEmpresa (
  ID_AfilxEmpresa NVARCHAR(20) PRIMARY KEY,
  Tipo_documento_afil NVARCHAR(2) NOT NULL,
  Numero_documento_afil NVARCHAR(15) NOT NULL,
  Estado_afil NVARCHAR(30) NOT NULL
);

INSERT INTO AfilxEmpresa (ID_AfilxEmpresa, Tipo_documento_afil, Numero_documento_afil, Estado_afil) VALUES
('CC123', 'CC', '123', 'Activo'),
('TI1234', 'TI', '1234', 'Activo'),
('RC12345', 'RC', '12345', 'Activo'),
('CC352', 'CC', '352', 'Activo'),
('TI3524', 'TI', '3524', 'Activo'),
('RC35245', 'RC', '35245', 'Activo'),
('CC789', 'CC', '789', 'Retirado'),
('TI7894', 'TI', '7894', 'Activo'),
('RC78945', 'RC', '78945', 'Retirado'),
('CC789352', 'CC', '789352', 'Activo'),
('TI7893524', 'TI', '7893524', 'Activo'),
('RC78935245', 'RC', '78935245', 'Retirado'),
('CC1123', 'CC', '1123', 'Activo'),
('TI11234', 'TI', '11234', 'Activo'),
('RC112345', 'RC', '112345', 'Retirado'),
('CC1352', 'CC', '1352', 'Activo'),
('TI13524', 'TI', '13524', 'Activo'),
('RC135245', 'RC', '135245', 'Retirado'),
('CC1789', 'CC', '1789', 'Retirado'),
('TI17894', 'TI', '17894', 'Activo'),
('RC178945', 'RC', '178945', 'Retirado'),
('CC1789352', 'CC', '1789352', 'Retirado'),
('TI17893524', 'TI', '17893524', 'Activo'),
('RC178935245', 'RC', '178935245', 'Activo');

CREATE TABLE Nueva_NET (
  NuevaNet_id NVARCHAR(30) PRIMARY KEY,
  tipo_documento_NET NVARCHAR(2) NOT NULL,
  numero_documento_NET NVARCHAR(15) NOT NULL,
  producto_NET NVARCHAR(50) NOT NULL,
  fecha_radicacion_NET DATE,
  Cant_Benf INT NOT NULL,
  Regimen NVARCHAR(50) NOT NULL,
  Cod_Asesor NVARCHAR(6) NOT NULL,
  id_afilxempresa_net NVARCHAR(20) NOT NULL,
  FOREIGN KEY (id_afilxempresa_net) REFERENCES AfilxEmpresa(ID_AfilxEmpresa)
);

INSERT INTO Nueva_NET (NuevaNet_id, tipo_documento_NET, numero_documento_NET, producto_NET, fecha_radicacion_NET, Cant_Benf, Regimen, Cod_Asesor, id_afilxempresa_net) VALUES
('CC123AfiliacionesS101', 'CC', '123', 'Afiliaciones', '2024-07-26', 1, 'SUBSIDIADO', 'S101', 'CC123'),
('TI1234InclusionesN212', 'TI', '1234', 'Inclusiones', '2024-07-13', 0, 'CONTRIBUTIVO', 'N212', 'TI1234'),
('RC12345ReingresosN230', 'RC', '12345', 'Reingresos', '2024-08-21', 3, 'CONTRIBUTIVO', 'N230', 'RC12345'),
('CC352SATS114', 'CC', '352', 'SAT', '2024-07-20', 2, 'SUBSIDIADO', 'S114', 'CC352'),
('TI3524MovilidadN228', 'TI', '3524', 'Movilidad', '2024-09-24', 1, 'CONTRIBUTIVO', 'N228', 'TI3524'),
('RC35245AfiliacionesS102', 'RC', '35245', 'Afiliaciones', '2024-09-27', 2, 'SUBSIDIADO', 'S102', 'RC35245'),
('CC789InclusionesS118', 'CC', '789', 'Inclusiones', '2024-07-16', 1, 'SUBSIDIADO', 'S118', 'CC789'),
('TI7894ReingresosN229', 'TI', '7894', 'Reingresos', '2024-07-11', 1, 'CONTRIBUTIVO', 'N229', 'TI7894'),
('RC78945MovilidadS109', 'RC', '78945', 'Movilidad', '2024-08-18', 3, 'SUBSIDIADO', 'S109', 'RC78945'),
('CC789352MovilidadN213', 'CC', '789352', 'Movilidad', '2024-07-18', 1, 'CONTRIBUTIVO', 'N213', 'CC789352'),
('TI7893524AfiliacionesN210', 'TI', '7893524', 'Afiliaciones', '2024-08-19', 3, 'CONTRIBUTIVO', 'N210', 'TI7893524'),
('RC78935245InclusionesS100', 'RC', '78935245', 'Inclusiones', '2024-09-23', 1, 'SUBSIDIADO', 'S100', 'RC78935245'),
('CC1123ReingresosN201', 'CC', '1123', 'Reingresos', '2024-07-29', 1, 'CONTRIBUTIVO', 'N201', 'CC1123'),
('TI11234MovilidadS124', 'TI', '11234', 'Movilidad', '2024-07-17', 0, 'SUBSIDIADO', 'S124', 'TI11234'),
('RC112345MovilidadN229', 'RC', '112345', 'Movilidad', '2024-08-29', 1, 'CONTRIBUTIVO', 'N229', 'RC112345'),
('CC1352AfiliacionesS104', 'CC', '1352', 'Afiliaciones', '2024-07-23', 0, 'SUBSIDIADO', 'S104', 'CC1352'),
('TI13524InclusionesN203', 'TI', '13524', 'Inclusiones', '2024-09-18', 2, 'CONTRIBUTIVO', 'N203', 'TI13524'),
('RC135245ReingresosN215', 'RC', '135245', 'Reingresos', '2024-07-15', 0, 'CONTRIBUTIVO', 'N215', 'RC135245'),
('CC1789MovilidadN230', 'CC', '1789', 'Movilidad', '2024-07-12', 3, 'CONTRIBUTIVO', 'N230', 'CC1789'),
('TI17894MovilidadN208', 'TI', '17894', 'Movilidad', '2024-08-25', 3, 'CONTRIBUTIVO', 'N208', 'TI17894'),
('RC178945AfiliacionesS107', 'RC', '178945', 'Afiliaciones', '2024-08-13', 2, 'SUBSIDIADO', 'S107', 'RC178945'),
('CC1789352InclusionesN208', 'CC', '1789352', 'Inclusiones', '2024-08-29', 1, 'CONTRIBUTIVO', 'N208', 'CC1789352'),
('TI17893524ReingresosN201', 'TI', '17893524', 'Reingresos', '2024-07-25', 0, 'CONTRIBUTIVO', 'N201', 'TI17893524'),
('RC178935245MovilidadS112', 'RC', '178935245', 'Movilidad', '2024-09-25', 2, 'SUBSIDIADO', 'S112', 'RC178935245');

CREATE TABLE Grabado_fechas (
  Numero_radicado_Grab INT PRIMARY KEY,
  Tipo_documento_Grab NVARCHAR(2) NOT NULL,
  Numero_documento_Grab NVARCHAR(15) NOT NULL,
  Producto_Grab NVARCHAR(50) NOT NULL,
  Fecha_rad_Grab DATE,
  Estado_Grab NVARCHAR(50) NOT NULL,
  Asesor NVARCHAR(6),
  IDNuevaNET_Grab NVARCHAR(30),
  FOREIGN KEY (IDNuevaNET_Grab) REFERENCES Nueva_NET(NuevaNet_id)
);

INSERT INTO Grabado_fechas (Numero_radicado_Grab, Tipo_documento_Grab, Numero_documento_Grab, Producto_Grab, Fecha_rad_Grab, Estado_Grab, Asesor, IDNuevaNET_Grab) VALUES
(12345671, 'CC', '123', 'Afiliaciones', '2024-07-16', 'ACTIVO', 'S101', 'CC123AfiliacionesS101'),
(12345672, 'TI', '1234', 'Inclusiones', '2024-07-15', 'RETIRADO', 'N212', 'TI1234InclusionesN212'),
(12345673, 'RC', '12345', 'Reingresos', '2024-09-18', 'SUSPENDIDO', 'N230', 'RC12345ReingresosN230'),
(12345674, 'CC', '352', 'SAT', '2024-08-22', 'CANCELADO', 'S114', 'CC352SATS114'),
(12345675, 'TI', '3524', 'Movilidad', '2024-07-17', 'ACTIVO', 'N228', 'TI3524MovilidadN228'),
(12345676, 'RC', '35245', 'Afiliaciones', '2024-08-21', 'RETIRADO', 'S102', 'RC35245AfiliacionesS102'),
(12345677, 'CC', '789', 'Inclusiones', '2024-08-22', 'SUSPENDIDO', 'S118', 'CC789InclusionesS118'),
(12345678, 'TI', '7894', 'Reingresos', '2024-07-19', 'CANCELADO', 'N229', 'TI7894ReingresosN229'),
(12345679, 'RC', '78945', 'Movilidad', '2024-07-25', 'ACTIVO', 'S109', 'RC78945MovilidadS109'),
(12345680, 'CC', '789352', 'Movilidad', '2024-09-25', 'RETIRADO', 'N213', 'CC789352MovilidadN213'),
(12345681, 'TI', '7893524', 'Afiliaciones', '2024-07-25', 'SUSPENDIDO', 'N210', 'TI7893524AfiliacionesN210'),
(12345682, 'RC', '78935245', 'Inclusiones', '2024-08-28', 'CANCELADO', 'S100', 'RC78935245InclusionesS100'),
(12345683, 'CC', '1123', 'Reingresos', '2024-09-13', 'ACTIVO', 'N201', 'CC1123ReingresosN201'),
(12345684, 'TI', '11234', 'Movilidad', '2024-09-15', 'RETIRADO', 'S124', 'TI11234MovilidadS124'),
(12345685, 'RC', '112345', 'Movilidad', '2024-09-30', 'SUSPENDIDO', 'N229', 'RC112345MovilidadN229'),
(12345686, 'CC', '1352', 'Afiliaciones', '2024-09-21', 'CANCELADO', 'S104', 'CC1352AfiliacionesS104'),
(12345687, 'TI', '13524', 'Inclusiones', '2024-08-21', 'ACTIVO', 'N203', 'TI13524InclusionesN203'),
(12345688, 'RC', '135245', 'Reingresos', '2024-07-16', 'RETIRADO', 'N215', 'RC135245ReingresosN215'),
(12345689, 'CC', '1789', 'Movilidad', '2024-08-24', 'SUSPENDIDO', 'N230', 'CC1789MovilidadN230'),
(12345690, 'TI', '17894', 'Movilidad', '2024-08-25', 'CANCELADO', 'N208', 'TI17894MovilidadN208'),
(12345691, 'RC', '178945', 'Afiliaciones', '2024-07-18', 'ACTIVO', 'S107', 'RC178945AfiliacionesS107'),
(12345692, 'CC', '1789352', 'Inclusiones', '2024-09-11', 'RETIRADO', 'N208', 'CC1789352InclusionesN208'),
(12345693, 'TI', '17893524', 'Reingresos', '2024-07-11', 'SUSPENDIDO', 'N201', 'TI17893524ReingresosN201'),
(12345694, 'RC', '178935245', 'Movilidad', '2024-07-27', 'CANCELADO', 'S112', 'RC178935245MovilidadS112');

-- Consultas de seleccion

SELECT * FROM Estado_Maestro;
SELECT * FROM Grabado_fechas;
SELECT * FROM Nueva_NET;
SELECT * FROM AfilxEmpresa;

-- Consultas de Join

	-- Inner Join

SELECT n.NuevaNet_id,n.tipo_documento_NET,n.numero_documento_NET,a.Numero_documento_afil,a.Estado_afil 
FROM Nueva_NET n 
INNER JOIN AfilxEmpresa a ON n.id_afilxempresa_net = a.ID_AfilxEmpresa;

	-- Left Join

SELECT n.NuevaNet_id,n.tipo_documento_NET,g.Numero_radicado_Grab,g.Fecha_rad_Grab 
FROM Nueva_NET n
LEFT JOIN Grabado_fechas g ON n.NuevaNet_id = g.IDNuevaNET_Grab;

	-- Rigth Join

SELECT g.Numero_radicado_Grab,g.Producto_Grab,n.NuevaNet_id,n.tipo_documento_NET 
FROM Grabado_fechas g
RIGHT JOIN Nueva_NET n ON g.IDNuevaNET_Grab = n.NuevaNet_id;

	-- Consulta con varias tablas

SELECT a.ID_AfilxEmpresa, a.Numero_documento_afil AS Documento, n.numero_documento_NET AS Documento_NET, 
    'AfilxEmpresa' AS Fuente 
FROM AfilxEmpresa a
INNER JOIN Nueva_NET n ON a.ID_AfilxEmpresa = n.id_afilxempresa_net
UNION ALL
SELECT a.ID_AfilxEmpresa, a.Numero_documento_afil AS Documento, g.Numero_documento_Grab AS Documento_Grab, 
    'Grabado_fechas' AS Fuente 
FROM AfilxEmpresa a
INNER JOIN Grabado_fechas g ON a.Numero_documento_afil = g.Numero_documento_Grab
UNION ALL 
SELECT n.id_afilxempresa_net AS ID_AfilxEmpresa,n.numero_documento_NET AS Documento,g.Numero_documento_Grab AS Documento_Grab, 
    'Nueva_NET' AS Fuente 
FROM Nueva_NET n
INNER JOIN Grabado_fechas g ON n.NuevaNet_id = g.IDNuevaNET_Grab;