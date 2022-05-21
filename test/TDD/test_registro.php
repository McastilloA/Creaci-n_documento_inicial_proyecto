<?php
require_once 'class_test.php';

if($_REQUEST){

	$test = new test();

    $test1 = $test->validaField($_REQUEST);   

    if($test1 == "OK"){
        
        $test2pass = $test->validaType("pass",$_REQUEST["pass"]);
        $test2nombre = $test->validaType("nombre",$_REQUEST["nombre"]);
        $test2apellido = $test->validaType("apellido",$_REQUEST["apellido"]);
        $test2correo = $test->validaType("correo",$_REQUEST["correo"]);
        
        if($test2pass == "OK" && $test2nombre == "OK" && $test2apellido == "OK" && $test2correo == "OK"){

            $test3 = $test->validarDatos($_REQUEST["nombre"],$_REQUEST["apellido"],$_REQUEST["correo"],$_REQUEST["user"],$_REQUEST["pass"],$_REQUEST["pass_confirm"]);
            
            if($test3 == "OK"){
                $test4 = $test->validarClave($_REQUEST["pass"]);
                
                if($test4 == "OK"){
                    echo "REGISTRO VÁLIDO";
                }else{
                    echo "REGISTRO NO VÁLIDO: " . $test4;
                }
            }else{
                echo "MESSAGE 3: " . $test3;
            } 

        }else{
            echo "MESSAGE 2: " . $test2pass.",". $test2nombre.",". $test2apellido.",". $test2correo;
        } 
    }else{
        echo "MESSAGE 1: " . $test1;
    } 

}else{

    die('data no permitida');
}
?>