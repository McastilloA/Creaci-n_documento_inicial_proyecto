Feature: Interfaz de aforo

    Interfaz de afoto de uso del administrador para para poder garantizar que los roles 
    administrativos puedan obtener un historial de ingreso de personas en el establecimiento 
    y una interfaz en tiempo real del total, faltantes y nombre completo de la persona entrante 
    al establecimiento, obteniendo información mas detallada de cada persona, la cual le 
    brindará mayor utilidad a la herramienta dependiendo del rol.
                
    Background: Administrador gestiona interfaz de aforo
        Given usuario creado
        And formulario de consulta de historico
        And formulario de gestion en tiempo real
        And interfaz adaptable al tamaño de la resolucion de imagen
            
            Scenario: Consulta exitosa de historico
                When se visualiza nombre
                And se visualiza apellidos
                And se visualiza tipo doc
                And se visualiza numero doc
                And se visualiza telefono
                And se visualiza fecha de ingreso
                And se visualiza fecha de salida
                And se visualiza temperatura
          
            Scenario: Gestion de ingreso en tiempo real del aforo
                When se diligencia nombre
                And se diligneica apellidos
                And se dligencia temperatura
                And se diligencia fecha de ingreso
                And se diligencia hora de ingreso
                Then se muestra resultado "registro de ingreso exitoso"
                And se actualiza circulo o grafico del aforo permitido

            Scenario: Gestion de salida en tiempo real del aforo
                When se diligencia nombre
                And se diligneica apellidos                
                And se diligencia fecha de salida
                And se diligencia hora de salida
                Then se muestra resultado "registro de salida exitoso"
                And se actualiza circulo o grafico del aforo permitido


