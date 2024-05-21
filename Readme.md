# Avance Proyecto Integral 

![ModER.pg](database/ModER.png)


Este documento describe la estructura de la base de datos para el proyecto integral. La base de datos está diseñada para manejar información de usuarios, configuraciones personalizadas, historial de búsquedas, favoritos, consultas y reportes. A continuación, se detallan las tablas principales:

1. **Usuarios**: Esta tabla almacena información sobre los usuarios del sistema. Incluye campos como ID de usuario, nombre, apellido, email, teléfono, semilla para seguridad, contraseña e ID único.

2. **Configuraciones**: Guarda las configuraciones personalizadas de cada usuario, como el motor de búsqueda preferido y otras preferencias.

3. **Historial de Búsquedas**: Registra cada búsqueda realizada por los usuarios, almacenando el texto de la búsqueda y la fecha en que se realizó.

4. **Favoritos**: Permite a los usuarios guardar artículos de referencia como favoritos, con información sobre el usuario, el artículo y la fecha en que se marcó como favorito.

5. **Historial de Consultas**: Similar a los favoritos, esta tabla guarda un registro de las consultas hechas por los usuarios a diferentes artículos de referencia.

6. **Reportes**: Esta tabla está destinada a almacenar reportes generados por los usuarios o el sistema.

Cada tabla está diseñada para interactuar con las demás a través de relaciones, principalmente claves foráneas que aseguran la integridad referencial y permiten acciones en cascada para actualizaciones y eliminaciones.

