PRAGMA foreign_keys = ON;

-- 1. PLOTS Table
CREATE TABLE Plots (
    plot INTEGER PRIMARY KEY, 
    year INTEGER,
    month INTEGER CHECK (month BETWEEN 1 AND 12),
    treatment TEXT,
    resourcetreatment TEXT,
    anttreatment TEXT,
    UNIQUE (year, month, plot)
);

-- 2. SPECIES Table
CREATE TABLE Species (
    speciescode TEXT PRIMARY KEY,
    scientificname TEXT,
    taxa TEXT,
    commonname TEXT,
    censustarget INTEGER,
    unidentified INTEGER,
    rodent INTEGER,
    granivore INTEGER,
    minhfl INTEGER CHECK (minhfl > 0),
    meanhfl REAL,
    maxhfl INTEGER,
    minwgt INTEGER CHECK (minwgt > 0),
    meanwgt REAL,
    maxwgt INTEGER,
    juvwgt REAL
);

-- 3. NEWMOONDATES Table
CREATE TABLE NewMoonDates (
    newmoonnumber INTEGER PRIMARY KEY,
    newmoondate TEXT,
    period INTEGER,
    censusdate TEXT
);

-- 4. SURVEYS Table
CREATE TABLE Surveys (
    recordID INTEGER,
    month INTEGER CHECK (month BETWEEN 1 AND 12),
    day INTEGER INTEGER CHECK (day BETWEEN 1 AND 31),
    year INTEGER,
    period REAL,
    plot INTEGER,
    note1 INTEGER,
    stake INTEGER,
    species TEXT,
    sex TEXT CHECK (sex IN ("M", "F")),
    reprod TEXT,
    age TEXT,
    testes TEXT,
    vagina TEXT,
    pregnant BOOLEAN,
    nipples TEXT,
    lactation TEXT,
    hfl INTEGER,
    wgt INTEGER,
    tag TEXT,
    note2 TEXT,
    ltag TEXT,
    note3 TEXT,
    prevrt TEXT,
    prevlet TEXT,
    nestdir TEXT,
    neststk INTEGER,
    note4 TEXT,
    note5 TEXT,
    PRIMARY KEY (recordID),
    FOREIGN KEY (species) REFERENCES Species (speciescode),
    FOREIGN KEY (plot) REFERENCES Plots (plot),
    FOREIGN KEY (period) REFERENCES NewMoonDates (newmoonnumber)
);

-- 5. TRAPPING Table
CREATE TABLE Traping (
    period INTEGER,
    plot INTEGER,
    day INTEGER CHECK (day BETWEEN 1 AND 31),
    month INTEGER CHECK (month BETWEEN 1 AND 12),
    year INTEGER,
    sampled INTEGER,
    effort INTEGER,
    qcflag TEXT,
    PRIMARY KEY (period, plot),
    FOREIGN KEY (plot) REFERENCES Plots (plot)
);
-- No sirve 
-- ALTER TABLE
--     Plots
-- ADD CHECK (month BETWEEN 1 AND 12);