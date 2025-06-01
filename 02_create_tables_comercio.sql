

CREATE TYPE "Rol" AS ENUM ('ADMIN', 'AUXILIAR');


CREATE TABLE "Usuario" (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  correo TEXT UNIQUE NOT NULL,
  contrasena TEXT NOT NULL,
  rol "Rol" NOT NULL,
  "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE "Municipio" (
  id SERIAL PRIMARY KEY,
  nombre TEXT UNIQUE NOT NULL
);


CREATE TABLE "Comerciante" (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  telefono TEXT,
  correo TEXT,
  "fechaRegistro" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  estado BOOLEAN DEFAULT TRUE,
  "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  "municipioId" INT NOT NULL,
  "actualizadoPorId" INT NOT NULL,

  CONSTRAINT fk_municipio FOREIGN KEY ("municipioId") REFERENCES "Municipio"(id),
  CONSTRAINT fk_usuario_actualiza_comerciante FOREIGN KEY ("actualizadoPorId") REFERENCES "Usuario"(id)
);


CREATE TABLE "Establecimiento" (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL,
  ingresos NUMERIC(10, 2) NOT NULL,
  "numeroEmpleados" INT NOT NULL,
  "comercianteId" INT NOT NULL,
  "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

  "actualizadoPorId" INT NOT NULL,

  CONSTRAINT fk_comerciante FOREIGN KEY ("comercianteId") REFERENCES "Comerciante"(id),
  CONSTRAINT fk_usuario_actualiza_establecimiento FOREIGN KEY ("actualizadoPorId") REFERENCES "Usuario"(id)
);


CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW."updatedAt" = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_update_usuario
BEFORE UPDATE ON "Usuario"
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER trg_update_comerciante
BEFORE UPDATE ON "Comerciante"
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER trg_update_establecimiento
BEFORE UPDATE ON "Establecimiento"
FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
