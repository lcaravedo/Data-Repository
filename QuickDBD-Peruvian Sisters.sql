SET XACT_ABORT ON;

BEGIN TRANSACTION QUICKDBD;

-- Create PS_Customer Table
CREATE TABLE [PS_Customer] (
    [CustomerID] VARCHAR(200) NOT NULL,
    [Name] VARCHAR(50) NOT NULL,
    [Email] VARCHAR(50) NOT NULL,
    [Address] VARCHAR(200) NOT NULL,
	[Delivery_City] VARCHAR(200) NOT NULL,
	[Zip_Code] int NOT NULL,
    CONSTRAINT [PK_PS_Customer] PRIMARY KEY CLUSTERED (
        [CustomerID] ASC
    )
);

-- Create PS_Products Table
CREATE TABLE [PS_Products] (
    [product_id] VARCHAR(50) NOT NULL,
    [sku] VARCHAR(50) NOT NULL,
    [product_name] VARCHAR(50) NOT NULL,
    [Product_price] DECIMAL(10, 2) NOT NULL,  
    [Product_category] VARCHAR(50) NOT NULL,
    CONSTRAINT [PK_PS_Products] PRIMARY KEY CLUSTERED (
        [product_id] ASC
    )
);

-- Create PS_Order Table
CREATE TABLE [PS_Order] (
    [OrderID] VARCHAR(50) NOT NULL,
    [date] DATETIME NOT NULL,
    [product_id] VARCHAR(50) NOT NULL,  -- Changed to product_id instead of item_name
    [Product_category] VARCHAR(50) NOT NULL,
    [quantity] INT NOT NULL,
    [Unit_Price] DECIMAL(10, 2) NOT NULL,  -- Changed to DECIMAL
    [transaction_amount] DECIMAL(10, 2) NOT NULL,  -- Changed to DECIMAL
    [transaction_type] VARCHAR(200) NOT NULL,
    [received_by] VARCHAR(200) NOT NULL,
    [time_of_sale] VARCHAR(200) NOT NULL,
    [Customer_ID] VARCHAR(200) NOT NULL,  -- Customer_ID should match the CustomerID in PS_Customer
    [Delivery_Address] VARCHAR(200) NOT NULL,
    CONSTRAINT [PK_PS_Order] PRIMARY KEY CLUSTERED (
        [OrderID] ASC
    ),
    FOREIGN KEY ([Customer_ID]) REFERENCES [PS_Customer]([CustomerID]),  -- Correct foreign key relationship
    FOREIGN KEY ([product_id]) REFERENCES [PS_Products]([product_id])  -- Fix foreign key reference
);

-- Create PS_Staff Table
CREATE TABLE [PS_Staff] (
    [Worker_id] VARCHAR(50) NOT NULL,
    [Worker_name] VARCHAR(50) NOT NULL,
    [Worker_Position] VARCHAR(50) NOT NULL,
	[Hourly_Rate] DECIMAL(10, 2) NOT NULL,
    CONSTRAINT [PK_PS_Staff] PRIMARY KEY CLUSTERED (
        [Worker_id] ASC
    )
);



-- Create PS_Ingredient Table
CREATE TABLE [PS_Ingredient] (
    [ing_id] Varchar(50) NOT NULL ,
    [ing_name] VARCHAR(250) NOT NULL ,
    [ing_weight] INT NOT NULL ,
    [ing_meas] VARCHAR(50) NOT NULL ,
    [ing_price] DECIMAL(5,2) NOT NULL ,  -- Changed to DECIMAL
    CONSTRAINT [PK_PS_Ingredient] PRIMARY KEY CLUSTERED (
        [ing_id] ASC
    )
);
-- Create PS_Recipe Table
CREATE TABLE [PS_Recipe] (
    [row_id] VARCHAR(50) NOT NULL ,
    [Recipe_ID] VARCHAR(50) NOT NULL,  -- Changed to INT to reference product_id
    [ing_id] VARCHAR(50) NOT NULL,
    [quantity] INT NOT NULL,
    CONSTRAINT [PK_PS_Recipe] PRIMARY KEY CLUSTERED (
        [row_id] ASC
    ),
    FOREIGN KEY ([Recipe_ID]) REFERENCES [PS_Products]([product_id]),  -- Fixed reference
    FOREIGN KEY ([ing_id]) REFERENCES [PS_Ingredient]([ing_id])
);
-- Create PS_Inventory Table
CREATE TABLE [PS_Inventory] (
    [Inv_ID] VARCHAR(50) NOT NULL ,
    [item_ID] VARCHAR(50) NOT NULL ,  -- Changed to INT to reference product_id
    [Quantity] INT NOT NULL ,
    CONSTRAINT [PK_PS_Inventory] PRIMARY KEY CLUSTERED (
        [Inv_ID] ASC
    ),
    FOREIGN KEY ([item_ID]) REFERENCES [PS_Products]([product_id])  -- Fixed reference
);



-- Create PS_shift Table
CREATE TABLE [PS_shift] (
    [shift_id] VARCHAR(50) NOT NULL ,
    [day_of_week] VARCHAR(50) NOT NULL ,
    [start_time] DATETIME NOT NULL ,
    [end_time] DATETIME NOT NULL ,
    CONSTRAINT [PK_PS_shift] PRIMARY KEY CLUSTERED (
        [shift_id] ASC
    )
);


-- Create PS_Rota Table
CREATE TABLE [PS_Rota] (
    [row_id] VARCHAR(50) NOT NULL ,
    [rota_id] VARCHAR(50) NOT NULL ,
    [date] DATE NOT NULL ,
    [shift_id] VARCHAR(50) NOT NULL ,
    [staff_id] VARCHAR(50) NOT NULL ,
    CONSTRAINT [PK_PS_Rota] PRIMARY KEY CLUSTERED (
        [row_id] ASC
    ),
    FOREIGN KEY ([staff_id]) REFERENCES [PS_Staff]([Worker_id]),
    FOREIGN KEY ([shift_id]) REFERENCES [PS_shift]([shift_id])
);

-- Commit the transaction
COMMIT TRANSACTION QUICKDBD;