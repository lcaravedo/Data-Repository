IF OBJECT_ID('PS_Customer', 'U') IS NOT NULL
    DROP TABLE [PS_Customer];

IF OBJECT_ID('PS_Products', 'U') IS NOT NULL
    DROP TABLE [PS_Products];

IF OBJECT_ID('PS_Order', 'U') IS NOT NULL
    DROP TABLE [PS_Order];

IF OBJECT_ID('PS_Staff', 'U') IS NOT NULL
    DROP TABLE [PS_Staff];

IF OBJECT_ID('PS_Recipe', 'U') IS NOT NULL
    DROP TABLE [PS_Recipe];

IF OBJECT_ID('PS_Ingredient', 'U') IS NOT NULL
    DROP TABLE [PS_Ingredient];

IF OBJECT_ID('PS_Inventory', 'U') IS NOT NULL
    DROP TABLE [PS_Inventory];

IF OBJECT_ID('PS_Rota', 'U') IS NOT NULL
    DROP TABLE [PS_Rota];

IF OBJECT_ID('PS_shift', 'U') IS NOT NULL
    DROP TABLE [PS_shift];

TRUNCATE TABLE PS_Staff
