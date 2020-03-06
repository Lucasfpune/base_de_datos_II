/*ejercicio 2*/
drop table if exists  usuarios;

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );

select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'usuarios';

create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );

drop table usuarios;

select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'usuarios';
/*ejercicio 3*/ 

 drop table if exists usuarios;

 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

 insert into usuarios (nombre, clave) values ('Mariano','payaso');

 select * from usuarios;

 insert into usuarios (clave, nombre) values ('River','Juan');

 select * from usuarios;

 insert into usuarios (nombre,clave) values ('Boca','Luis');

 select * from usuarios;

/*ejercicio 4*/
drop table if exists libros;

 create table libros(
  titulo varchar(20),
  autor varchar(15),
  editorial varchar(10),
  precio float,
  cantidad integer
 );

 select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'libros';

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('El aleph','Borges','Emece',25.50,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Matematica estas ahi','Paenza','Siglo XXI',18.8,200);

 select * from libros;

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll','Atlantida',10,200);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values ('Alicia en el pais','Lewis Carroll','Atlantida',10,200);

 select * from libros;
/*ejrcicio 6*/
drop table if exists usuarios;

 create table usuarios (
  nombre varchar(30),
  clave varchar(10)
 );

 select table_name,column_name,udt_name,character_maximum_length 
  from information_schema.columns 
  where table_name = 'usuarios';

 insert into usuarios (nombre, clave)
  values ('Marcelo','Boca');
 insert into usuarios (nombre, clave)
  values ('JuanPerez','Juancito');
 insert into usuarios (nombre, clave)
  values ('Susana','River');
 insert into usuarios (nombre, clave)
  values ('Luis','River');

 select * from usuarios
  where nombre='Leonardo';

 select nombre from usuarios
  where clave='River';

 select nombre from usuarios
  where clave='Santi';


/*ejrcicio 7*/
 drop table if exists libros;

 create table libros(
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo,autor,editorial,precio)
  values ('El aleph','Borges','Emece',24.50);
 insert into libros (titulo,autor,editorial,precio)
  values ('Martin Fierro','Jose Hernandez','Emece',16.00);
 insert into libros (titulo,autor,editorial,precio)
  values ('Aprenda PHP','Mario Molina','Emece',35.40);
 insert into libros (titulo,autor,editorial,precio)
  values ('Cervantes y el quijote','Borges','Paidos',50.90);

 select * from libros
  where autor<>'Borges';

 select titulo,precio
  from libros
  where precio>20;

 select * from libros
  where precio<=30;


/*ejrcicio 8*/
 drop table if exists usuarios;

 create table usuarios(
  nombre varchar(30),
  clave varchar(10)
 );

 insert into usuarios (nombre,clave)
  values ('Marcelo','River');
 insert into usuarios (nombre,clave)
  values ('Susana','chapita');
 insert into usuarios (nombre,clave)
  values ('CarlosFuentes','Boca');
 insert into usuarios (nombre,clave)
  values ('FedericoLopez','Boca');

 select * from usuarios;

 delete from usuarios
 where nombre='Marcelo';

 select * from usuarios;

 delete from usuarios
 where nombre='Marcelo';

 select * from usuarios;

 delete from usuarios
  where clave='Boca';

 select * from usuarios;

 delete from usuarios;

 select * from usuarios;

/*ejrcicio 9*/
 drop table if exists usuarios;

 create table usuarios(
  nombre varchar(20),
  clave varchar(10)
 );

 insert into usuarios (nombre,clave)
  values ('Marcelo','River');
 insert into usuarios (nombre,clave)
  values ('Susana','chapita');
 insert into usuarios (nombre,clave)
  values ('Carlosfuentes','Boca');
 insert into usuarios (nombre,clave)
  values ('Federicolopez','Boca');

 update usuarios set clave='RealMadrid';

 select * from usuarios;

 update usuarios set clave='Boca'
  where nombre='Federicolopez';

 select * from usuarios;

 update usuarios set clave='payaso'
  where nombre='JuanaJuarez';

 select * from usuarios;

 update usuarios set nombre='Marceloduarte', clave='Marce'
  where nombre='Marcelo';

 select * from usuarios;

/*ejrcicio 10*/
 drop table if exists libros;

 create table libros(
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15)
 );

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Emece');

 select * from libros --mostramos los registros de libros; 

 select titulo, autor 
 /*mostramos títulos y
 nombres de los autores*/
 from libros;


/*ejrcicio 11*/
 drop table if exists libros;

 create table libros(
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15)
 );

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Emece');

 select * from libros --mostramos los registros de libros; 

 select titulo, autor 
 /*mostramos títulos y
 nombres de los autores*/
 from libros;


/*ejrcicio 12*/
 drop table if exists usuarios;

 create table usuarios(
  nombre varchar(20),
  clave varchar(10),
  primary key(nombre)
 );

 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'usuarios';

 insert into usuarios (nombre, clave)
  values ('juanperez','Boca');
 insert into usuarios (nombre, clave)
  values ('raulgarcia','River');

  insert into usuarios (nombre, clave)
  values ('juanperez','payaso');

  insert into usuarios (nombre, clave)
  values (null,'payaso');

  update usuarios set nombre='juanperez'
  where nombre='raulgarcia';


/*ejrcicio 13*/
 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );

 select table_name,column_name,udt_name,character_maximum_length,is_nullable 
  from information_schema.columns 
  where table_name = 'libros';

 insert into libros (titulo,autor,editorial)
  values('El aleph','Borges','Planeta');

 select * from libros;

 insert into libros (titulo,autor,editorial)
  values('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros (titulo,autor,editorial)
  values('Cervantes y el quijote','Borges','Paidos');
 insert into libros (titulo,autor,editorial)
  values('Matematica estas ahi', 'Paenza', 'Paidos');

 select codigo,titulo,autor,editorial from libros;

 delete from libros where codigo=1;
 
 select * from libros; 

 insert into libros (codigo,titulo,autor,editorial)
  values(1,'Aprender Python', 'Rodriguez Luis', 'Paidos');

 select * from libros; 

 insert into libros (titulo,autor,editorial)
  values('Java Ya', 'Nelson', 'Paidos');

 select * from libros; 

/*ejrcicio 14*/
 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(30),
  autor varchar(30),
  editorial varchar(15),
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial)
  values('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (titulo,autor,editorial)
  values('Aprenda PHP','Mario Molina','Emece');
 insert into libros (titulo,autor,editorial)
  values('Cervantes y el quijote','Borges','Paidos');
 insert into libros (titulo,autor,editorial)
  values('Matematica estas ahi', 'Paenza', 'Paidos');
 insert into libros (titulo,autor,editorial)
  values('El aleph', 'Borges', 'Emece');

 delete from libros;

 select * from libros;

 insert into libros (titulo,autor,editorial)
  values('Antología poetica', 'Borges', 'Emece');

 select * from libros;

 truncate table libros;

 insert into libros (titulo,autor,editorial)
  values('Antología poetica', 'Borges', 'Emece');

 select * from libros;



/*ejrcicio 15*/
 drop table if exists visitantes;

 create table visitantes(
  nombre varchar(30),
  edad integer,
  sexo char(1),
  domicilio varchar(30),
  ciudad varchar(20),
  telefono varchar(11)
 );

 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Juan Juarez',32,'masc','Avellaneda 789','Cordoba','4234567');

 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

 select * from visitantes;

 drop table visitantes;

 create table visitantes(
  nombre character varying(30),
  edad integer,
  sexo character(1),
  domicilio character varying(30),
  ciudad character varying(20),
  telefono character varying(11)
 );

 insert into visitantes (nombre,edad,sexo,domicilio,ciudad,telefono)
  values ('Marcela Morales',43,'f','Colon 456','Cordoba',4567890);

 select * from visitantes;

/*ejrcicio 16*/
 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(15),
  precio decimal(10,2),
  cantidad smallint,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25.6666, 260);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',120000000000.66, 260);

 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Emece',25000,100000);

 select * from libros;

/*ejrcicio 17*/
drop table if exists asistencia;

create table asistencia(
  dni char(8),
  fecha date,
  hora time,
  primary key (dni)
 );

 insert into asistencia(dni,fecha,hora) values ('11111111','2008/12/31','13:00:59');

 select * from asistencia;

 drop table asistencia;

 create table asistencia(
  dni char(8),
  fechahora timestamp,
  primary key (dni)
 );

 insert into asistencia (dni,fechahora) values ('11111111','2008/12/31 13:00:00.59');

 select * from asistencia;

 set datestyle to 'European';

 insert into asistencia (dni,fechahora) values ('22222222','2008/12/31 13:00:00.59');

 select * from asistencia;

/*ejrcicio 18*/
 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(40),
  autor varchar(30) not null default 'Desconocido', 
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint default 0,
 primary key(codigo)
 );

 insert into libros (titulo,editorial,precio)
  values('Java en 10 minutos','Paidos',50.40);

 insert into libros (titulo,editorial)
  values('Aprenda PHP','Siglo XXI');

 select * from libros;

 select *
  from information_schema.columns 
  where table_name = 'libros';

 insert into libros (titulo,autor,precio,cantidad)
  values ('El gato con botas',default,default,100);
 
 select * from libros;

 insert into libros default values;

 select * from libros;

 insert into libros (titulo,autor,cantidad)
  values ('Alicia en el pais de las maravillas','Lewis Carroll',null);

 select * from libros;

/*ejrcicio 19*/
 drop table if exists libros;

 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad smallint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select titulo, precio,cantidad,
  precio*cantidad
  from libros;

 select titulo,precio,
  precio-(precio*0.1)
  from libros;

 update libros set precio=precio-(precio*0.1);
 select *from libros;

 select titulo||'-'||autor||'-'||editorial
  from libros;



/*ejrcicio 20*/
drop table if exists agenda;

 create table agenda(
  nombre varchar(30),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda
  values('Juan Perez','Avellaneda 908','4252525');
 insert into agenda
  values('Marta Lopez','Sucre 34','4556688');
 insert into agenda
  values('Carlos Garcia','Sarmiento 1258',null);

 select nombre  as nombreyapellido,
  domicilio,telefono
  from agenda;


