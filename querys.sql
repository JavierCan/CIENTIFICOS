USE Cientificos;

--4. Sacar una relación completa de los científicos asignados a cada proyecto. Mostrar DNI, Nombre del científico, Identificador del proyecto y nombre del proyecto.

SELECT Cientificos.DNI, Cientificos.Nombre, Asignacion.id, Proyectos.Nombre
FROM Cientificos
JOIN Asignacion ON Cientificos.DNI = Asignacion.DNI
JOIN Proyectos ON Asignacion.id = Proyectos.id;


--5. Obtener el número de proyectos al que está asignado cada científico (mostrar el DNI y el nombre).

SELECT Cientificos.DNI, Cientificos.Nombre, COUNT(Asignacion.id) AS 'Numero de proyectos'
FROM Cientificos
JOIN Asignacion ON Cientificos.DNI = Asignacion.DNI
GROUP BY Cientificos.DNI, Cientificos.Nombre;

--6. Obtener el número de científicos que están asignados a cada proyecto (mostrar el identificador del proyecto y el nombre).
SELECT Proyectos.id, Proyectos.Nombre, COUNT(Asignacion.DNI) AS 'Numero de cientificos'
FROM Proyectos
JOIN Asignacion ON Proyectos.id = Asignacion.id
GROUP BY Proyectos.id, Proyectos.Nombre;




--7. Obtener el número de horas de dedicación al proyecto de cada cientifico.

SELECT Cientificos.DNI, Cientificos.Nombre, SUM(Proyectos.horas_invertidas) AS 'Horas invertidas'
FROM Cientificos
JOIN Asignacion ON Cientificos.DNI = Asignacion.DNI
JOIN Proyectos ON Asignacion.id = Proyectos.id
GROUP BY Cientificos.DNI, Cientificos.Nombre;

--8. Obtener el DNI y nombre de los científicos que se dedican a más de un proyecto y cuya dedicación media a cada proyecto sea superior a las 80 horas.

SELECT Cientificos.DNI, Cientificos.Nombre, AVG(Proyectos.horas_invertidas) AS 'Horas invertidas'
FROM Cientificos
JOIN Asignacion ON Cientificos.DNI = Asignacion.DNI
JOIN Proyectos ON Asignacion.id = Proyectos.id
GROUP BY Cientificos.DNI, Cientificos.Nombre
HAVING AVG(Proyectos.horas_invertidas) > 80;

