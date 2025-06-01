


INSERT INTO "Municipio" (id, nombre) VALUES (1, 'Lleida');
INSERT INTO "Municipio" (id, nombre) VALUES (2, 'Cáceres');
INSERT INTO "Municipio" (id, nombre) VALUES (3, 'Huelva');
INSERT INTO "Usuario" (id, nombre, correo, contrasena, rol) VALUES (1, 'Albano Llopis Hierro', 'maitecalatayud@bonet.com', 'Admin12345', 'ADMIN');
INSERT INTO "Usuario" (id, nombre, correo, contrasena, rol) VALUES (2, 'Rico Navarro', 'pintocleto@nunez-lamas.com', 'Aux12345', 'AUXILIAR');
INSERT INTO "Comerciante" (id, nombre, telefono, correo, "municipioId", "actualizadoPorId") VALUES (1, 'Nico Lasa', '+34721 92 83 27', 'angela83@hotmail.com', 3, 1);
INSERT INTO "Comerciante" (id, nombre, telefono, correo, "municipioId", "actualizadoPorId") VALUES (2, 'Samuel Moles Quero', '+34 813 95 37 67', 'emilio38@jodar.es', 1, 1);
INSERT INTO "Comerciante" (id, nombre, telefono, correo, "municipioId", "actualizadoPorId") VALUES (3, 'Ruy Roca Bartolomé', '+34969 784 801', 'dani46@gmail.com', 3, 1);
INSERT INTO "Comerciante" (id, nombre, telefono, correo, "municipioId", "actualizadoPorId") VALUES (4, 'Glauco Cuéllar Abascal', '+34745701543', 'selenabermudez@torre.com', 3, 2);
INSERT INTO "Comerciante" (id, nombre, telefono, correo, "municipioId", "actualizadoPorId") VALUES (5, 'Ileana Cloe Font Mesa', '+34857 871 331', 'graudionisia@gmail.com', 2, 2);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Barba-Grande', 74413.5, 8, 1, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Chacón PLC', 74326.11, 18, 2, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Bou-Arévalo', 59458.76, 2, 2, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Coronado Ltd', 10275.83, 8, 2, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Acero-Lago', 65338.56, 18, 3, 2);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Escalona, Vera and Camino', 22823.62, 19, 3, 2);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Martín, Vera and Flor', 81133.62, 1, 3, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Talavera PLC', 28509.26, 7, 4, 2);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Landa PLC', 11118.82, 13, 4, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Belda Ltd', 27187.57, 2, 5, 2);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Barral, Granados and Bauzà', 54086.58, 13, 5, 1);
INSERT INTO "Establecimiento" (nombre, ingresos, "numeroEmpleados", "comercianteId", "actualizadoPorId") VALUES ('Murillo Inc', 55652.02, 20, 5, 2);