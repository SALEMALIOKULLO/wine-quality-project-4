CREATE TABLE "red_wine" (
    "fixed_acidity" FLOAT   NOT NULL,
    "volatile_acidity" FLOAT  NOT NULL,
    "citric_acid" FLOAT   NOT NULL,
    "residual_sugar" FLOAT  NOT NULL,
    "chlorides" FLOAT   NOT NULL,
    "free_sulfur_dioxide" FLOAT  NOT NULL,
    "total_sulfur_dioxide" FLOAT   NOT NULL,
	density FLOAT,
    "pH" FLOAT   NOT NULL,
    "sulphates" FLOAT   NOT NULL,
    "alcohol" FLOAT   NOT NULL,
    "quality" FLOAT   NOT NULL
);

CREATE TABLE "white_wine" (
   "fixed_acidity" FLOAT   NOT NULL,
    "volatile_acidity" FLOAT  NOT NULL,
    "citric_acid" FLOAT   NOT NULL,
    "residual_sugar" FLOAT  NOT NULL,
    "chlorides" FLOAT   NOT NULL,
    "free_sulfur_dioxide" FLOAT  NOT NULL,
    "total_sulfur_dioxide" FLOAT   NOT NULL,
	density FLOAT,
    "pH" FLOAT   NOT NULL,
    "sulphates" FLOAT   NOT NULL,
    "alcohol" FLOAT   NOT NULL,
    "quality" FLOAT   NOT NULL
);

--SELECT * FROM red_wine
--SELECT * FROM white_wine


-- Check for missing values in white_wine
SELECT COUNT(*) FROM white_wine WHERE 
    `fixed_acidity` IS NULL OR
    `volatile_acidity` IS NULL OR
    `citric_acid` IS NULL OR
    `residual_sugar` IS NULL OR
    `chlorides` IS NULL OR
    `free_sulfur_dioxide` IS NULL OR
    `total_sulfur_dioxide` IS NULL OR
    `density` IS NULL OR
    `pH` IS NULL OR
    `sulphates` IS NULL OR
    `alcohol` IS NULL OR
    `quality` IS NULL;

-- Check for missing values in red_wine
SELECT COUNT(*) FROM red_wine WHERE 
    `fixed_acidity` IS NULL OR
    `volatile_acidity` IS NULL OR
    `citric_acid` IS NULL OR
    `residual_sugar` IS NULL OR
    `chlorides` IS NULL OR
    `free_sulfur_dioxide` IS NULL OR
    `total_sulfur_dioxide` IS NULL OR
    `density` IS NULL OR
    `pH` IS NULL OR
    `sulphates` IS NULL OR
    `alcohol` IS NULL OR
    `quality` IS NULL;


-- Create a new table to store the combined data
CREATE TABLE all_wine AS
SELECT *, 'white' AS wine_type FROM white_wine
UNION ALL
SELECT *, 'red' AS wine_type FROM red_wine;

-- Validate the number of rows in the combined table
SELECT COUNT(*) FROM all_wine;

-- Validate the number of rows for each wine type
SELECT wine_type, COUNT(*) FROM all_wine GROUP BY wine_type;



