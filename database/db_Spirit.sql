-- Dig de base de datos relacional 


--1  Crear la tabla de Usuarios
CREATE TABLE Usuarios (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    semilla VARCHAR(20) UNIQUE NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    id_unico VARCHAR(10) UNIQUE NOT NULL
);

-- describe Usuarios
-- drop Usuarios

-- 2 Selecciones del usuario la tabla de Configuraciones

CREATE TABLE Configuraciones (
    configuracion_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    motor_busqueda VARCHAR(50), -- Por ejemplo: Google, Bing, DuckDuckGo, etc.
    otras_preferencias TEXT
);
-- describe Configuraciones


-- 3 Crear la tabla de Historial de Búsquedas
CREATE TABLE HistorialBusquedas (
    historial_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    texto_busqueda VARCHAR(200),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 4 Crear la tabla de Favoritos
CREATE TABLE favoritos (
    favorito_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    articulo_id INT REFERENCES ArticulosReferencia(articulo_id) ON DELETE CASCADE,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5 Crear la tabla de Historial de Consultas
CREATE TABLE HistorialConsultas (
    consulta_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    articulo_id INT REFERENCES ArticulosReferencia(articulo_id) ON DELETE CASCADE,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 6 Crear la tabla de Reportes
CREATE TABLE reportes (
    reporte_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    contenido TEXT, -- Detalles del reporte exportado
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 7 Crear la tabla de Recuperación de Cuenta
CREATE TABLE RecuperacionCuenta (
    recuperacion_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    id_unico VARCHAR(10) NOT NULL,
    token_recuperacion VARCHAR(100) UNIQUE NOT NULL,
    fecha_solicitud TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_expiracion TIMESTAMP NOT NULL
);


-- 8 Crear la tabla de Sesiones
CREATE TABLE Sesiones (
    sesion_id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE,
    token_sesion VARCHAR(100) UNIQUE NOT NULL,
    fecha_inicio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_expiracion TIMESTAMP NOT NULL
);


-- 9 Crear la tabla de Artículos de Referencia (necesaria para las relaciones)
CREATE TABLE ArticulosReferencia (
    articulo_id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    contenido TEXT NOT NULL,
    autor VARCHAR(100) NOT NULL,
    fecha_publicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Crear la tabla de LoginUsuario
CREATE TABLE LoginUsuario (
    login_id SERIAL PRIMARY KEY,
    nombre_o_semilla VARCHAR(50) NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE
);


CREATE TABLE RegistroNewUser (
    registro_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    contrasena VARCHAR(100) NOT NULL
);
-- describe RegistroNewUser
-- complementer of segment... 

ALTER TABLE RegistroNewUser
ADD COLUMN usuario_id INT REFERENCES Usuarios(usuario_id) ON DELETE CASCADE;