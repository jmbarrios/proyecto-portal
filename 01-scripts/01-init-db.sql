CREATE TABLE IF NOT EXISTS
    Plots
(
    year INTEGER,
    month INTEGER CHECK (month BETWEEN 1 AND 12),
    plot INTEGER,
    treatment CHARACTER,
    resourcetreatment CHARACTER,
    anttreatment CHARACTER,
    UNIQUE (year, month, plot),
    PRIMARY KEY (plot)
);

-- No sirve 
-- ALTER TABLE
--     Plots
-- ADD CHECK (month BETWEEN 1 AND 12);