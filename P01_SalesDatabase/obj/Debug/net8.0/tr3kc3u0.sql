IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [customers] (
    [Id] int NOT NULL IDENTITY,
    [Customer_Name] nvarchar(max) NOT NULL,
    [Customer_Email] nvarchar(max) NOT NULL,
    [CreaditCarnumber] nvarchar(max) NOT NULL,
    [Customer_Sales] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_customers] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [products] (
    [Id] int NOT NULL IDENTITY,
    [Product_Name] nvarchar(max) NOT NULL,
    [Quantity] float NOT NULL,
    [Price] real NOT NULL,
    [Product_Sales] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_products] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [sales] (
    [Id] int NOT NULL IDENTITY,
    [Data] datetime2 NOT NULL,
    [Products] nvarchar(max) NOT NULL,
    [Customers] nvarchar(max) NOT NULL,
    [Stores] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_sales] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [stores] (
    [Id] int NOT NULL IDENTITY,
    [Store_Name] nvarchar(max) NOT NULL,
    [Store_Sales] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_stores] PRIMARY KEY ([Id])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240915030705_InitialCreate', N'8.0.8');
GO

COMMIT;
GO

