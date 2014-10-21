CREATE TABLE adresses
(build_number NUMERIC(6) PRIMARY KEY,
street_name VARCHAR(100) NOT NULL,
home_number NUMERIC(4) );

CREATE TABLE owners
(id NUMERIC(6) PRIMARY KEY,
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
(owner NUMERIC(6) REFERENCES owners(id),
build_number NUMERIC(6) REFERENCES adresses(build_number),
flat_number NUMERIC(4) NOT NULL,
part NUMERIC(8,2) NOT NULL, CHECK(part<=1),
ownage_start DATE NOT NULL,
ownage_finish DATE );