--1--
SELECT owners.fullname, ownage.build_number
FROM owners, ownage
WHERE ownage.part = 1 AND ownage.owner = owners.id
ORDER BY owner;
--2--
SELECT owners.fullname, documents.*
FROM owners, documents
WHERE documents.id = owners.id;
--2--
SELECT owners.fullname, documents.*
FROM owners LEFT JOIN documents ON documents.id = owners.id
UNION
SELECT owners.fullname, documents.*
FROM documents RIGHT JOIN owners ON documents.id = owners.id;
--3--
SELECT ownage.flat_number, count(*)
FROM ownage, owners
WHERE ownage.owner = owners.id;
--4--
SELECT DISTINCT ownage.flat_number
FROM ownage, adresses
WHERE YEAR(now()) - YEAR(owners.birthdate) < 18;
--5--
SELECT ownage.flat_number
FROM ownage LEFT JOIN owners
ON ownage.owner = owners.id
WHERE owners.id IS NULL;