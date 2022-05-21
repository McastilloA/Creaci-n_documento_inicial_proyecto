Feature: Interfaz registrar usuario

    Interfaz de registro de usuario para poder garantizar que los usuarios puedan ingresar 
    la información necesaria para darle la utilidad a la herramienta, y sea útil para los 
    perfiles administradores y estándares.

    Background: Usuario se registra correctamente en la aplicación
        Given Un navegador web en el portal de Afovidapp o un dispositivo móvil con Afovidapp
        And formulario de registro
        And interfaz adaptable al tamaño de la resolucion de imagen 
            | opciones de registro   | tipo opcion      |
            | 1                      | personal         |
            | 2                      | establecimiento  |

            Scenario: Registra correctamente usuario - personal
                When selecciona opcion "personal"
                And se diligencia usuario o correo no registrado en la base de datos
                And se diligencia contraseña
                Then se deberia mostrar resultado "registro exitoso"

            Scenario: Registra correctamente usuario - establecimiento
                When selecciona opcion "establecimiento"
                And se realiza gestion de pago ante area comerial
                And se diligencia usuario o correo no registrado en la base de datos
                And se diligencia contraseña
                Then se deberia mostrar resultado "registro exitoso"

    Background: Usuario no puede registrarse en la aplicación
        Given Un navegador web en el portal de Afovidapp o un dispositivo móvil con Afovidapp
        And formulario de registro
        And interfaz adaptable al tamaño de la resolucion de imagen 
            | opciones de registro   | tipo opcion      |
            | 1                      | personal         |
            | 2                      | establecimiento  |

            Scenario: Error en registro de usuario - personal
                When se selecciona opcion "personal" 
                And se diligencia usuario o correo existente en la base de datos
                And se deja espacio de usuario o correo en blanco
                And se deja espacio de contraseña en blanco
                Then se deberia mostrar resultado "error en el registro"

            Scenario: Error en registro de usuario - establecimiento
                When se selecciona opcion "establecimiento"
                And no se realiza gestion de pago ante area comerial
                And se deja espacio de usuario o correo en blanco
                And se deja espacio de contraseña en blanco
                Then se deberia mostrar resultado "error en el registro"


