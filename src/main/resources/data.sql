/*INSERT DE UN USUARIO POR DEFECTO*/
<<<<<<< HEAD
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario) VALUES(1,"usuario","usuario","usuario@gmail.com","usuario1234",0,"UsuarioNombre1");
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario) VALUES(2,"karl","karl","karl@gmail.com","karl1234",0,"karlos");
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario) VALUES(3,"juan","juan","juan@gmail.com","juan1234",0,"juanceto07");
<<<<<<< HEAD
/*INSERT DE UN JUGADOR POR DEFECTO*/
INSERT INTO jugador(usuario_id,posicionCasilla,saldo) VALUES (1,1,1000);
=======
=======
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario,imagenPerfil,baneado) VALUES(1,"usuario","usuario","usuario@gmail.com","usuario1234",0,"UsuarioNombre1","/imagenes/fotosPerfil/perfil1.png",false);
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario,imagenPerfil,baneado) VALUES(2,"karl","karl","karl@gmail.com","karl1234",0,"karlos","/imagenes/fotosPerfil/perfil2.png",false);
INSERT INTO usuario (id,nombre,apellido,email,password,victorias,nombreUsuario,imagenPerfil,baneado) VALUES(3,"juan","juan","juan@gmail.com","juan1234",0,"juanceto07","/imagenes/fotosPerfil/perfil3.png",false);
>>>>>>> 57d9088b7d73d8b2649fb9b015a9cc0f9794debe

/*INSERT PARTIDA (PRUEBA)*/
/*INSERT INTO partida(id,estadoPartida,fechaApertura,nombre,numeroJugadores,creador_id,turnoJugador_id) values (1,"ABIERTA",CURDATE(),"ASDpartida",3,1,1);*/
>>>>>>> 33e48c0f1dbd8bcde808005a43bf08027c1274e4

/*INSERCION DE LAS PROPIEDADES (no eliminar)*/
/*CASAS CELESTES Y SU TREN*/
<<<<<<< HEAD
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Calle Balcarce", "/imagenes/propiedades/celeste/balcarce.png",100,true,2);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida Belgrano", "/imagenes/propiedades/celeste/belgrano.png",100,true,3);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Tren Roca", "/imagenes/propiedades/trenes/roca.png",500,true,4);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Calle Juramento", "/imagenes/propiedades/celeste/juramento.png",100,true,5);

/*CASAS ROSAS Y SU SERVICIO*/
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida 9 de Julio","/imagenes/propiedades/rosa/9julio.png",200,true,7);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Calle Aribeño", "/imagenes/propiedades/rosa/arribeños.png",200,true,8);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Servicio de Luz", "/imagenes/propiedades/utilidades/edenor.png",250,true,9);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Calle Mendoza", "/imagenes/propiedades/rosa/mendoza.png",200,true,10);

/*CASAS ROJAS Y SU TREN*/
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida de Mayo", "/imagenes/propiedades/roja/mayo.png",400,true,12);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida Rivadavia", "/imagenes/propiedades/roja/rivadavia.png",400,true,13);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Tren Sarmiento", "/imagenes/propiedades/trenes/sarmiento.png",500,true,14);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Florencio Varela", "/imagenes/propiedades/roja/varela.png",400,true,15);

/*CASAS VERDES Y SU SERVICIO*/
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida Corrientes", "/imagenes/propiedades/verde/corrientes.png",600,true,17);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida Florida", "/imagenes/propiedades/verde/florida.png",600,true,18);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Aysa", "/imagenes/propiedades/utilidades/aysa.png",350,true,19);
insert into propiedad(nombre,imagen,precio,disponibilidad,nroCasilla) values("Avenida Santa Fé", "/imagenes/propiedades/verde/santafe.png",600,true,20);
=======
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Calle Balcarce", "/imagenes/propiedades/celeste/balcarce.png",100,2,"#51bcf5");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida Belgrano", "/imagenes/propiedades/celeste/belgrano.png",100,3,"#51bcf5");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Tren Roca", "/imagenes/propiedades/trenes/roca.png",500,4,"#ffffff");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Calle Juramento", "/imagenes/propiedades/celeste/juramento.png",100,5,"#51bcf5");

/*CASAS ROSAS Y SU SERVICIO*/
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida 9 de Julio","/imagenes/propiedades/rosa/9julio.png",200,7,"#f1004e");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Calle Aribeño", "/imagenes/propiedades/rosa/arribeños.png",200,8,"#f1004e");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Servicio de Luz", "/imagenes/propiedades/utilidades/edenor.png",250,9,"#ffffff");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Calle Mendoza", "/imagenes/propiedades/rosa/mendoza.png",200,10,"#f1004e");

/*CASAS ROJAS Y SU TREN*/
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida de Mayo", "/imagenes/propiedades/roja/mayo.png",400,12,"#d1001f");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida Rivadavia", "/imagenes/propiedades/roja/rivadavia.png",400,13,"#d1001f");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Tren Sarmiento", "/imagenes/propiedades/trenes/sarmiento.png",500,14,"#ffffff");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Florencio Varela", "/imagenes/propiedades/roja/varela.png",400,15,"#d1001f");

/*CASAS VERDES Y SU SERVICIO*/
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida Corrientes", "/imagenes/propiedades/verde/corrientes.png",600,17,"#16914f");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida Florida", "/imagenes/propiedades/verde/florida.png",600,18,"#16914f");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Aysa", "/imagenes/propiedades/utilidades/aysa.png",350,19,"ffffff");
insert into propiedad(nombre,imagen,precio,nroCasilla,color) values("Avenida Santa Fé", "/imagenes/propiedades/verde/santafe.png",600,20,"#16914f");
>>>>>>> 57d9088b7d73d8b2649fb9b015a9cc0f9794debe
