Feature: Interfaz perfiles

    Interfaz de perfiles para poder garantizar que los usuarios puedan ingresar 
    informacion mas detallada en la herramienta, la cual brindara mayor utilidad a la misma
    dependiendo del rol.
                
    Background: Usuario ingresa correctamente a interfaz de perfil
        Given usuario creado
        And formulario de perfil
        And interfaz adaptable al tamaño de la resolucion de imagen
            
            Scenario: Registro exitoso de informacion de perfil personal
                When se diligencia nombre
                And se diligneica apellidos
                And se diligencia tipo doc
                And se diligencia numero doc
                And se diligencia telefono
                And se diligencia correo electronico
                And se diligencia fecha de nacimiento
                And se puede diligenciar opcion de actualizar contraseña
                And se sube fotografia de perfil de tamaño y formato adecuado
                Then se muestra resultado "actualizacion exitosa"

            Scenario: Registro exitoso de informacion de perfil establecimiento
                When se diligencia nombre establecimiento
                And se diligencia tipo persona natural o juridica
                And se dilignecia numero doc o nit,
                And se diligencia telefono
                And se diligencia correo electronico
                And se puede diligenciar opcion de actualizar contraseña
                Then se muestra resultado "actualizacion exitosa"

    Background: Usuario ingresa correctamente a interfaz de perfil
        Given usuario creado
        And formulario de perfil
        And interfaz adaptable al tamaño de la resolucion de imagen
            
            Scenario: Error en el registro de informacion de perfil personal
                When no se diligencia nombre
                And no se diligneica apellidos
                And no se diligencia tipo doc
                And no se diligencia numero doc
                And no se diligencia telefono
                And no se diligencia correo electronico
                And no se diligencia fecha de nacimiento
                And se puede diligenciar opcion de actualizar contraseña
                And sube fotografia de perfil en tamaño y formato no aceptado
                Then se muestra resultado "error en actualizacion"

            Scenario: Error en el registro de informacion de perfil establecimiento
                When no se diligencia nombre establecimiento
                And no se diligencia tipo persona natural o juridica
                And no se dilignecia numero doc o nit,
                And no se diligencia telefono
                And no se diligencia correo electronico
                And se puede diligenciar opcion de actualizar contraseña
                Then se muestra resultado "error en actualizacion"


