-- How to Alter a Table

 SELECT *
    FROM sample;
    
    ALTER TABLE sample
    ADD event_date DATE;
    
    INSERT INTO sample (event_date)
    VALUE ('2023-12-12');