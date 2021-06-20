CREATE TABLE [dbo].[Customers] (
    [CustomerId]          INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]           NVARCHAR (50) NULL,
    [LastName]            NVARCHAR (50) NOT NULL,
    [CustomerPhoneNumber] NVARCHAR (15) NULL,
    [CustomerEmail]       NVARCHAR (50) NULL,
    [TotalPurchaseAmount] MONEY         NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CHECK ([CustomerEmail] like '%_@__%.__%'),
    CHECK (len([CustomerPhoneNumber])<=(15) AND NOT [CustomerPhoneNumber] like '%[^0-9]%'),
    CHECK (len([FirstName])<=(50)),
    CHECK (len([LastName])<=(50) AND [LastName]<>'')
);

