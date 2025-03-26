DROP DATABASE Biblioteca98

SELECT SERVERPROPERTY('InstanceDefaultDataPath') AS DataPath,
       SERVERPROPERTY('InstanceDefaultLogPath') AS LogPath;


-- 00_create_DB.sql
CREATE DATABASE Biblioteca98
ON PRIMARY (
    NAME = Biblioteca98_data,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca98.mdf',
    SIZE = 3MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 1MB
)
LOG ON (
    NAME = Biblioteca98_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca98.ldf',
    SIZE = 1MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 1MB
);
GO


