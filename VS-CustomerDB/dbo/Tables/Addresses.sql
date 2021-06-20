CREATE TABLE [dbo].[Addresses] (
    [AddressId]    INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]   INT            NOT NULL,
    [AddressLine]  NVARCHAR (100) NOT NULL,
    [AddressLine2] NVARCHAR (100) NULL,
    [AddressType]  NVARCHAR (8)   NOT NULL,
    [City]         NVARCHAR (50)  NOT NULL,
    [PostalCode]   NVARCHAR (6)   NOT NULL,
    [state]        NVARCHAR (20)  NOT NULL,
    [Country]      NVARCHAR (30)  NOT NULL,
    PRIMARY KEY CLUSTERED ([AddressId] ASC),
    CHECK ([AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK ([Country]='Canada' OR [Country]='USA'),
    CHECK (len([AddressLine])<=(100) AND [AddressLine]<>''),
    CHECK (len([AddressLine2])<=(100)),
    CHECK (len([City])<=(50) AND [City]<>''),
    CHECK (len([PostalCode])<=(6) AND [PostalCode]<>''),
    CHECK (len([state])<(20) AND [state]<>''),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customers] ([CustomerId]) ON DELETE CASCADE ON UPDATE CASCADE
);

