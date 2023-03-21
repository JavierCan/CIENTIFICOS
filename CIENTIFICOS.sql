#1.- Crear una base de Datos "Científicos"
CREATE DATABASE Cientificos;
USE Cientificos;

#2.- Crear tablas Científicos y Proyectos.

CREATE TABLE Cientificos(
    DNI VARCHAR(8) NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Apellidos VARCHAR(30) NOT NULL,
    PRIMARY KEY (DNI)
);


CREATE TABLE Proyectos(
    id CHAR(50) NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(500) NOT NULL,
    horas_invertidas INT NOT NULL,
    PRIMARY KEY (id)
);


#3.- Llenar la información de la base de datos, con tu creatividad.

insert into cientificos 
values ('56473978', "stephen", "hawking"),
('78394561',"steve", "jobs");

insert into cientificos
values ('12345678', "albert", "einstein"),
('87654321', "marie", "curie");

insert into cientificos
values ('78123540', "Galileo", "Galilei"),
('12340008', "Isaac", "Newton"),
('87654000', "Nikola", "Tesla"),
('78236710', "louis", "Pasteur");

insert into proyectos
values ('P001', 'Proyecto de investigación en energías renovables', 'Este proyecto busca encontrar nuevas formas de obtener energía limpia y sostenible.', 500);

insert into proyectos
values ('P002', 'Desarrollo de un sistema de inteligencia artificial', 'Este proyecto tiene como objetivo crear un sistema de inteligencia artificial que sea capaz de aprender y mejorar por sí mismo.', 800);

insert into proyectos
values ('P003', 'Investigación en medicina regenerativa', 'Este proyecto busca encontrar nuevas formas de regenerar tejidos y órganos dañados a través de técnicas de medicina regenerativa.', 650);

insert into proyectos
values ('P004', 'Desarrollo de una aplicación móvil de educación', 'Este proyecto tiene como objetivo crear una aplicación móvil que permita a los estudiantes aprender de manera interactiva y divertida.', 300);

insert into proyectos
values ('P005', 'Investigación en inteligencia artificial para la detección de fraudes', 'Este proyecto busca desarrollar un sistema de inteligencia artificial que sea capaz de detectar fraudes en transacciones financieras.', 750);

insert into proyectos
values ('P006', 'Desarrollo de una plataforma de comercio electrónico', 'Este proyecto tiene como objetivo crear una plataforma de comercio electrónico que sea fácil de usar y segura para los usuarios.', 600);

insert into proyectos
values ('P007', 'Investigación en nuevas tecnologías de almacenamiento de datos', 'Este proyecto busca encontrar nuevas formas de almacenar grandes cantidades de datos de manera segura y eficiente.', 700);

insert into proyectos
values ('P008', 'Desarrollo de una aplicación para el monitoreo de la salud', 'Este proyecto tiene como objetivo crear una aplicación móvil que permita a los usuarios monitorear su salud y recibir consejos personalizados.', 400);

insert into proyectos
values ('P009', 'Investigación en energía nuclear', 'Este proyecto busca desarrollar nuevas tecnologías de energía nuclear que sean seguras y sostenibles.', 900);

insert into proyectos
values ('P010', 'Desarrollo de un robot autónomo', 'Este proyecto tiene como objetivo crear un robot autónomo capaz de realizar tareas complejas sin la intervención humana.', 1000);

CREATE Table asignacion(
    DNI VARCHAR(8) NOT NULL,
    id CHAR(50) NOT NULL,
    PRIMARY KEY (DNI, id),
    FOREIGN KEY (DNI) REFERENCES Cientificos(DNI),
    FOREIGN KEY (id) REFERENCES Proyectos(id)
);

insert into asignacion
values ('56473978', 'P002'),
('12345678', 'P001'),
('78123540', 'P004'),
('87654000', 'P007'),
('78236710', 'P008'),
('87654321', 'P010'),
('12340008', 'P005'),
('78123540', 'P009'),
('56473978', 'P003'),
('12345678', 'P006');