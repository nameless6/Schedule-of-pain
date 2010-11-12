CREATE TABLE komentar(	id SERIAL NOT NULL,	id_meta_poziadavka INTEGER REFERENCES meta_poziadavka(id) ON UPDATE CASCADE ON DELETE CASCADE,	text TEXT,	typ SMALLINT NOT NULL,	zadal VARCHAR,	cas_zadania TIMESTAMP);COMMENT ON COLUMN komentar.typ IS 'typ 1 vseobecny komentar; typ 2 pozadovany software; typ 3 diskusia k poziadavke';COMMENT ON COLUMN komentar.zadal IS 'kto zadal komentar, dolezite pre typ 3, aby sa rozlisil pedagog od rozvrhara';COMMENT ON COLUMN komentar.cas_zadania IS 'pre typ 3, aby sa diskusia dala zoradit podla casu pridania';