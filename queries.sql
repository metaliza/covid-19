delete from "ockovani-stage";

SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" not in ('Comirnaty', 'COVID-19 Vaccine Moderna', 'COVID-19 Vaccine AstraZeneca', 'VAXZEVRIA', 'COVID-19 Vaccine Janssen');
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" not in ('Comirnaty', 'COVID-19 Vaccine Moderna', 'COVID-19 Vaccine AstraZeneca', 'VAXZEVRIA');
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" not in ('Comirnaty', 'COVID-19 Vaccine Moderna', 'COVID-19 Vaccine AstraZeneca');

SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 'Comirnaty';
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 'COVID-19 Vaccine Moderna';
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 'COVID-19 Vaccine AstraZeneca';
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 'VAXZEVRIA';
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 'COVID-19 Vaccine Janssen';

SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" = 
select count(*) as "cnt" from "ockovani-stage" where x
