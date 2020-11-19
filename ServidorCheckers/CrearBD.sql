CREATE TABLE [dbo].[Administrador] (
	[idAdministrador] [int] NOT NULL IDENTITY,
	[apodo] [nvarchar] (max) UNIQUE,
        [contrasenia] [nvarchar](max),
	[correoElectronico] [nvarchar](max),
    CONSTRAINT [PK_dbo.Administrador] PRIMARY KEY ([idAdministrador])
    )
CREATE TABLE [dbo].[Jugador] (
	[idJugador] [int] NOT NULL IDENTITY,
	[apodo] [nvarchar] (max) UNIQUE,
        [contrasenia] [nvarchar](max),
	[correoElectronico] [nvarchar](max),
	[status] [nvarchar](max),
	[respuestaConfirmacion] [nvarchar](max),
	[preguntaRecuperacion] [nvarchar](max),
	[pinConfirmacion] [nvarchar](max),
	[idCreador] [int] NOT NULL,
        CONSTRAINT [PK_dbo.Jugador] PRIMARY KEY ([idJugador])
    )

CREATE TABLE [dbo].[Reputacion] (
	[idDuenio] [int] NOT NULL IDENTITY,
        [numeroReportes] [int],
	[numeroVecesReportado] [int],
        CONSTRAINT [PK_dbo.Reputacion] PRIMARY KEY ([idDuenio])
    )
    CREATE TABLE [dbo].[Reporte] (
        [idReporte] [int] NOT NULL IDENTITY,
        [idAcusador] [int] NOT NULL,
        [idReportado] [int] NOT NULL,
	[descripcionAcuso] [nvarchar](max) NOT NULL,
        CONSTRAINT [PK_dbo.Reporte] PRIMARY KEY ([idReporte])
    )

CREATE TABLE [dbo].[Ranking] (
	[idDuenio] [int] NOT NULL IDENTITY,
        [fechaRegistracion] [date],
	[numeroVictorias] [int],
	[partidasJugadas] [int],
	[rank] [int],
	[numeroPerdidas] [int],
        CONSTRAINT [PK_dbo.Ranking] PRIMARY KEY ([idDuenio])
    )
CREATE TABLE [dbo].[Partida] (
	[idPartida] [int] NOT NULL IDENTITY,
	[tiempo] [double],
        [modoJuego] [nvarchar] (max),
	[turno] [int],
	[idGanador] [int] NOT NULL,
	[idGanador] [int] NOT NULL,
        CONSTRAINT [PK_dbo.Partida] PRIMARY KEY ([idPartida])
    )

    CREATE INDEX [IX_idJugador] ON [dbo].[Jugador]([idJugador])

    ALTER TABLE [dbo].[Reporte] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Reporte_acusador] FOREIGN KEY ([idAcusador]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Reporte] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Reporte_reportado] FOREIGN KEY ([idReportado]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Reputacion] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Reputacion_duenio] FOREIGN KEY ([idDuenio]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Jugador] ADD CONSTRAINT [FK_dbo.Administrador_dbo.Jugador_creador] FOREIGN KEY ([idCreador]) REFERENCES [dbo].[Administrador] ([idAdministrador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Ranking] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Ranking_duenio] FOREIGN KEY ([idDuenio]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Partida] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Partida_ganador] FOREIGN KEY ([idGanador]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE

ALTER TABLE [dbo].[Partida] ADD CONSTRAINT [FK_dbo.Jugador_dbo.Partida_perdedor] FOREIGN KEY ([idPerdedor]) REFERENCES [dbo].[Jugador] ([idJugador]) ON DELETE CASCADE