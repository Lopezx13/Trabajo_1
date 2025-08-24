USE quiz_1;


--Creamos tbl pais
CREATE TABLE Pais(
    Id INT IDENTITY PRIMARY KEY NOT NULL,
    Pais  VARCHAR(100) NOT NULL
);

CREATE UNIQUE INDEX ix_pais_pais
on Pais(pais);

--Creamos la tbl autor 
CREATE TABLE Autor(
Id INT IDENTITY PRIMARY KEY NOT NULL,
Nombre VARCHAR(50) NOT NULL,
Id_Pais int not null,
FOREIGN KEY(Id_Pais) REFERENCES Pais(id)
);

CREATE UNIQUE INDEX ix_autor_nombre
on Autor(Nombre);

--Creamos la tbl ciudad
CREATE TABLE Ciudad(
Id int identity primary key not null,
Ciudad varchar(50) not null,
Id_Pais int not null,
foreign key(Id_Pais) references Pais(id)
);

CREATE UNIQUE INDEX ix_ciudad_ciudad
on Ciudad(Ciudad);

--Creamos la tbl editorial
CREATE TABLE Editorial(
Id int identity primary key not null,
Editorial varchar(50) not null,
Id_Ciudad int not null,
foreign key(Id_Ciudad) references Ciudad(Id)
);

CREATE UNIQUE INDEX ix_editorial_editorial
on Editorial(Editorial);


--Creamos la tbl libro
CREATE TABLE Libro(
Id int identity primary key not null,
Titulo varchar(50) not null,
Edicion int not null,
Año int,
Id_Editorial int not null,
Paginas int,
Signatura varchar(20) not null,
ISBN int not null,
foreign key (Id_Editorial) references Editorial(id)
);


CREATE UNIQUE INDEX ix_Libro_titulo
on Libro(Titulo);

CREATE UNIQUE INDEX ix_Libro_signatura
on Libro(Signatura);

CREATE UNIQUE INDEX ix_Libro_ISBN
on Libro(ISBN);

--Creamos la tbl tema
CREATE TABLE Tema(
    Id INT identity primary key not null,
    Tema varchar(100) NOT NULL
);



--Creamos la tbl libro tema
CREATE TABLE LibroTema(
Id_Libro int not null,
Id_Tema int not null,
primary key(Id_Libro,Id_Tema),
foreign key(Id_Tema) references Tema(id),
foreign key(Id_Libro) references Libro(id)
);

--Creamos la tbl libro autor
CREATE TABLE LibroAutor(
Id_Libro int not null,
Id_Autor int not null,
primary key(Id_Libro,Id_Autor),
foreign key(Id_Autor) references Autor(id),
foreign key(Id_Libro) references Libro(id)
);
