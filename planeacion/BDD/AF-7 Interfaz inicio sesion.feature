Feature: Interfaz iniciar sesion

    Interfaz de inicio de sesion para poder garantizar que los usuarios puedan iniciar sesión 
    en la herramienta y puedan acceder a los módulos que puedan acceder, dependiendo del rol.

    Background: Usuario inicia sesion en la aplicación
        Given usuario registrado
        And formulario de inicio de sesion
        And interfaz adaptable al tamaño de la resolucion de imagen
                    
            Scenario: Inicio sesion exitoso
                When se ingresa correo electrónico registrado
                And se ingresa contraseña correcta
                Then se deberia mostrar "acceso permitido"

            Scenario: Inicio sesion incorrecto
                When se ingresa correo electrónico no registrado
                And se ingresa contraseña errada
                And presiona el boton "ingresar"
                Then se deberia mostrar "acceso denegado"        

            Scenario: Recuperacion de contraseña exitosa
                When se da clic en boton "olvide mi contraseña"
                And  se ingresa el correo de la cuenta a recuperar
                Then se deberia mostrar mensaje "recuperacion enviada con exito a correo"


