CREATE TABLE adresses
(build_number NUMERIC(6) CONSTRAINT pk_home PRIMARY KEY,
street_name VARCHAR(100) NOT NULL,
home_number NUMERIC(4) );

CREATE TABLE owners
(id NUMERIC(6) CONSTRAINT pk_id PRIMARY KEY,
fullname VARCHAR(100) NOT NULL,
birthdate DATE NOT NULL,
sex CHAR(1) NOT NULL );


CREATE TABLE documents
(id NUMERIC(4) CONSTRAINT ref_id REFERENCES owners(id),
doc_type VARCHAR(50) NOT NULL,
doc_ser NUMERIC(4) NOT NULL,
doc_num NUMERIC(6) NOT NULL,
who_gave VARCHAR(100) NOT NULL );

CREATE TABLE ownage
(owner NUMERIC(6) CONSTRAINT ref_owner REFERENCES owners(id),
build_number NUMERIC(6) CONSTRAINT ref_build_number REFERENCES adresses(build_number),
flat_number NUMERIC(4) NOT NULL,
part NUMERIC(8) NOT NULL CONSTRAINT check_part CHECK(part<=1),
ownage_start DATE NOT NULL,
ownage_finish DATE );

INSERT INTO adresses (BUILD_NUMBER, STREET_NAME, HOME_NUMBER)
VALUES ('3','KASHIRSKAYA','14');

INSERT INTO owners (ID, FULLNAME, BIRTHDATE, SEX)
VALUES ('123','CHRISTINA','01.01.1980','f');

INSERT INTO ownage (OWNER, BUILD_NUMBER, FLAT_NUMBER, PART, OWNAGE_START, OWNAGE_FINISH)
VALUES ('123', '3', '403', '1', '01.03.1997', '10.05.2009') ;

SELECT owner, build_number, flat_number
FROM ownage
WHERE part=1
ORDER BY owner;

SELECT id, doc_type, doc_ser, doc_num, who_gave
FROM docements
ORDER BY id;

SELECT flat_number, owner
FROM ownage
WHERE 