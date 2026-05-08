COPY Plots FROM '00-data/raw/Portal_plots.csv' (HEADER, DELIMITER ',');
COPY Species FROM '00-data/raw/Portal_rodent_species.csv' (HEADER, DELIMITER ',', NULLSTR '');
COPY NewMoonDates FROM '00-data/raw/moon_dates.csv' (HEADER, DELIMITER ',', NULLSTR 'NA');
COPY Trapping FROM '00-data/raw/Portal_rodent_trapping.csv' (HEADER, DELIMITER ',');
INSERT INTO Surveys 
SELECT * REPLACE (IF(period < 0, NULL, period) AS period) 
FROM read_csv('00-data/raw/Portal_rodent.csv', 
              header=True, 
              nullstr='', 
              auto_detect=True,
              sample_size=-1);