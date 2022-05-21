<?php
class test{

    function _construct (){
    }

    public function validaField($data){

        $cantidad = "0";

        foreach ($data as $clave=>$valor)
        {
            if(!$valor){

                $cantidad++;
            }
            
        }

        if($cantidad > 0)
            $mensaje = "El valor de $clave es: $valor";

        
        $mensaje = "OK";
        
        return $mensaje;
    }	


    public function validaType($clave,$valor){

        if($clave == "user"){
            if(!is_string($valor)){
                $mensaje = "Tipo no es correcto para el campo";
            }
        }

        if($clave == "pass"){
            if(!is_numeric($valor)){
                $mensaje = "Tipo no es correcto para el campo";
            }
        }

        if($clave == "nombre"){
            if(!is_string($valor)){
                $mensaje = "Tipo no es correcto para el campo";
            }
        }

        if($clave == "apellido"){
            if(!is_string($valor)){
                $mensaje = "Tipo no es correcto para el campo";
            }
        }

        if($clave == "correo"){
            if(!is_string($valor)){
                $mensaje = "Tipo no es correcto para el campo";
            }
        }

        $mensaje = "OK";
        return $mensaje;

    }
    
    public function validarClave($clave){

        $error_clave = "OK";

        if(strlen($clave) < 6){
           $error_clave = "La clave debe tener al menos 6 caracteres";
        }
        if(strlen($clave) > 16){
           $error_clave = "La clave no puede tener más de 16 caracteres";
        }
        if (!preg_match('`[a-z]`',$clave)){
           $error_clave = "La clave debe tener al menos una letra minúscula";
        }
        if (!preg_match('`[A-Z]`',$clave)){
           $error_clave = "La clave debe tener al menos una letra mayúscula";
        }
        if (!preg_match('`[0-9]`',$clave)){
           $error_clave = "La clave debe tener al menos un caracter numérico";
        }
        
        return $error_clave;
     }


     public function validarDatos($nombre,$apellido,$correo,$user,$pass,$pass_confirm){

        $error_clave = "OK";

        if($nombre == ""){
            $error_clave = "Valide la informacion, Falta el nombre";
        }
        if($apellido == ""){
            $error_clave = "Valide la informacion, Falta el apellido";
        }
        if($correo == ""){
            $error_clave = "Valide la informacion, Falta el correo";
        }
        if($user == ""){
            $error_clave = "Valide la informacion, Falta el usuario";
        }
        if($pass == ""){
            $error_clave = "Valide la informacion, Falta la contraseña";
        }
        if($pass_confirm == ""){
            $error_clave = "Valide la informacion, Falta la confirmacion de la contraseña";
        }
        if($pass != $pass_confirm){
            $error_clave = "La contraseña de confirmacion no es la misma a la inicial";
        }
        if (!filter_var($correo, FILTER_VALIDATE_EMAIL)) {
            $error_clave = "Esta dirección de correo ($correo) no es válida.";
        }

        return $error_clave;
     }

}
?>