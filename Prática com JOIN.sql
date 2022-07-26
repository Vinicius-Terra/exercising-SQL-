

-- EXERCICIO 1
SELECT users.id, users.name, cities.name as city
FROM users 
JOIN cities
ON cities.name = 'Rio de Janeiro';

-- EXERCICIO 2

SELECT t.id, w.name as writer, r.name as recipient, t.message
FROM testimonials t
JOIN users w
ON t."writerId" = w.id
JOIN users r
ON t."recipientId" = r.id;

-- EXERCICIO 3

SELECT u.id, u.name, c.name as course, s.name as school, e."endDate"
FROM users u
JOIN educations e
ON e."userId" = u.id
JOIN courses c
ON c.id = e."courseId"
JOIN schools s
ON s.id = e."schoolId"
WHERE u.id = 30 AND e.status = 'finished';

-- EXERCICIO 4

SELECT u.id, u.name, r.name as role, c.name as company, e."startDate"
FROM users u
JOIN experiences e
ON e."userId" = u.id
JOIN roles r
ON r.id = e."roleId"
JOIN companies c
ON c.id = e."companyId"
WHERE u.id = 50 AND e."endDate" IS NULL;

-- EXERCICIO BONUS

SELECT s.id, s.name as school, c.name as course, compa.name as company, r.name as role
FROM users u
JOIN educations e
ON e."userId" = u.id
JOIN schools s
ON s.id = e."schoolId"
JOIN courses c
ON c.id = e."courseId"
JOIN applicants a
ON a."userId" = u.id
JOIN jobs j
ON j.id = a."jobId"
JOIN companies compa
ON compa.id = j."companyId"
JOIN roles r
ON r.id = j."roleId"
WHERE r.name = 'Software Engineer' AND compa.id = 10;