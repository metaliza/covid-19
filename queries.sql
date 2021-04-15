delete from "ockovani-stage"
SELECT count(*) as "cnt" FROM "ockovani-stage" WHERE "vakcina" not in ('Comirnaty',  'COVID-19 Vaccine Moderna', 'COVID-19 Vaccine AstraZeneca', 'VAXZEVRIA', 'COVID-19 Vaccine Janssen')
