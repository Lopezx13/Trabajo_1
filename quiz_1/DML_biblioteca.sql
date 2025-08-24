use quiz_1;
go
--Ingresamos valores en la tbl Pais
SET IDENTITY_INSERT Pais ON
INSERT INTO Pais(Id, Pais) 
VALUES(1, 'COLOMBIA');
INSERT INTO Pais(Id, Pais) 
VALUES(2, 'ARGENTINA');
INSERT INTO Pais(Id, Pais) 
VALUES(3, 'MÉXICO');
INSERT INTO Pais(Id, Pais) 
VALUES(4, 'ESPAÑA');
INSERT INTO Pais(Id, Pais) 
VALUES(5, 'ESTADOS UNIDOS');
INSERT INTO Pais(Id, Pais) 
VALUES(6, 'FRANCIA');
INSERT INTO Pais(Id, Pais) 
VALUES(7, 'CHILE');
INSERT INTO Pais(Id, Pais) 
VALUES(8, 'ITALIA');
SET IDENTITY_INSERT Pais OFF


--Ingresamos valores en la tbl Autor
INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Gabriel García Márquez', 1);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Jorge Luis Borges', 2);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Octavio Paz', 3);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Miguel de Cervantes', 4);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Ernest Hemingway', 5);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Pablo Neruda', 7);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Umberto Eco', 8);

INSERT INTO Autor(Nombre, Id_Pais) 
VALUES('Victor Hugo', 6);

--Ingresamos valores en la tbl ciudad
INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Medellín', 1);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Bogotá', 1);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Buenos Aires', 2);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Madrid', 4);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('New York', 5);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('París', 6);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Santiago', 7);

INSERT INTO Ciudad(Ciudad, Id_Pais) 
VALUES('Roma', 8);

--Ingresamos valores en la tbl editorial
INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Editorial Planeta', 4);

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Penguin Random House', 5); 

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Norma Editorial', 1); 

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Sudamericana', 3);

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Gallimard', 6);

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Seix Barral', 4); 

INSERT INTO Editorial(Editorial, Id_Ciudad) 
VALUES('Mondadori', 8); 

--Ingresamos valores en la tbl libro

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('Cien años de soledad', 1, 1967, 1, 471, 'LIT-GGM-001', 978123456);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('El Aleph', 2, 1949, 4, 157, 'LIT-JLB-001', 978234567);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('El laberinto de la soledad', 1, 1950, 2, 398, 'LIT-OP-001', 978345678);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('Don Quijote de la Mancha', 5, 1605, 1, 863, 'LIT-MC-001', 978456789);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('The Old Man and the Sea', 1, 1952, 2, 127, 'LIT-EH-001', 978567890);
INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('Canto General', 1, 1950, 3, 512, 'LIT-PN-001', 978678901);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('El nombre de la rosa', 1, 1980, 7, 502, 'LIT-UE-001', 978789012);

INSERT INTO Libro(Titulo, Edicion, Año, Id_Editorial, Paginas, Signatura, ISBN) 
VALUES('Los Miserables', 3, 1862, 5, 1463, 'LIT-VH-001', 978890123);



--Ingresamos valores en la tbl tema
INSERT INTO Tema(Tema) 
VALUES('Realismo mágico');

INSERT INTO Tema(Tema) 
VALUES('Filosofía');

INSERT INTO Tema(Tema) 
VALUES('Poesía');

INSERT INTO Tema(Tema) 
VALUES('Clásico universal');

INSERT INTO Tema(Tema) 
VALUES('Literatura estadounidense');

INSERT INTO Tema(Tema) 
VALUES('Literatura francesa');

INSERT INTO Tema(Tema) 
VALUES('Literatura italiana');

INSERT INTO Tema(Tema) 
VALUES('Literatura latinoamericana');

--Ingresamos valores en la tbl libro-tema
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(1, 1); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(2, 2); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(3, 2); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(4, 4); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(5, 5); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(6, 3); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(7, 7); 
INSERT INTO LibroTema(Id_Libro, Id_Tema) VALUES(8, 6); 

--Ingresamos valores en la tbl libro-autor
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(1, 1);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(2, 2);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(3, 3);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(4, 4);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(5, 5);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(6, 6);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(7, 7);
INSERT INTO LibroAutor(Id_Libro, Id_Autor) VALUES(8, 8); 