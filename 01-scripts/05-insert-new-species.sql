-- Lynx rufus (Lince)
INSERT INTO Species (
    speciescode, scientificname, taxa, commonname, censustarget, unidentified,
    rodent, granivore, minwgt, meanwgt, maxwgt, juvwgt
) VALUES (
    'LR', 'Lynx rufus', 'Mammalia', 'Bobcat', 100, 0,
    1, 0, 4000, 9000, 15000, 2000
);

-- Panthera onca (Jaguar)
INSERT INTO Species (
    speciescode, scientificname, taxa, commonname, censustarget, unidentified,
    rodent, granivore, minwgt, meanwgt, maxwgt, juvwgt
) VALUES (
    'PO', 'Panthera onca', 'Mammalia', 'Jaguar', 50, 0,
    0, 0, 36000, 68000, 120000, 8000
);

-- Romerolagus diazi (Teporingo)
INSERT INTO Species (
    speciescode, scientificname, taxa, commonname, censustarget, unidentified,
    rodent, granivore, minwgt, meanwgt, maxwgt, juvwgt
) VALUES (
    'RD', 'Romerolagus diazi', 'Mammalia', 'Volcano rabbit', 200, 0,
    0, 1, 350, 500, 600, 150
);