BULK INSERT PS_Customer
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Customer.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Ingredient
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Ingredients.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_inventory
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_inventory.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Order
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Order.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Products
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Products.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Recipe
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Recipe.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Rota
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Rota.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);



BULK INSERT PS_shift
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_shift.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);


BULK INSERT PS_Staff
FROM 'C:\Users\Vanessa\OneDrive - United Charitable\Desktop\Leo - FY25 - Projects\SQL\Projects\PS_Staff.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
