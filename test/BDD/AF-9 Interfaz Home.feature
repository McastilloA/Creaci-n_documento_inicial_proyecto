Feature: Interfaz Home

    Interfaz de Home para poder garantizar que los usuarios puedan visualizar la informacion 
    detallada en la herramienta, la cual brindara mayor utilidad a la misma
    dependiendo del rol.
                
    Scenario: Usuario visualiza correctamente interfaz de Home
        Given usuario creado
        And perfil actualizado exitosamente
        And formulario de Home creado previamente
        And interfaz adaptable al tamaño de la resolucion de imagen
        Then se visualiza nombre
        And se visualiza apellidos
        And se visualiza tipo doc
        And se visualiza numero doc
        And se visualiza telefono
        And se visualiza correo electronico
        And se visualiza fecha de nacimiento
        And se visualiza fotografia de perfil