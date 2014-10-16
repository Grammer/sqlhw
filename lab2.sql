--1--
SELECT owners.fullname, ownage.flat_number
FROM owners, ownage
WHERE ownage.part = 1
ORDER BY owner;
--2--
SELECT owners.fullname, documents.*
FROM owners, documents
WHERE documents.id = owners.id;
--2--
SELECT owners.fullname, documents.*
FROM owners FULL OUTER JOIN documents ON documents.id = owners.id;
--3--
SELECT ownage.flat_number, count(*)
FROM ownage, owners
WHERE ownage.owner = owners.id


;
--4--
SELECT DISTINCT ownage.flat_number
FROM ownage, adresses
WHERE YEAR(now()) - YEAR(owners.birthdate) < 18;
--5--
SELECT ownage.flat_number
FROM ownage LEFT JOIN owners
ON ownage.owner = owners.id
WHERE owners.id IS NULL;