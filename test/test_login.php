<?php
require_once 'class_test.php';

if($_REQUEST){

	$test = new test();

    $test1 = $test->validaField($_REQUEST);   

    if($test1 == "OK"){
        
        $test2 = $test->validaType("pass",$_REQUEST["pass"]);
        
        if($test2 == "OK"){

            $test3 = $test->validarClave($_REQUEST["pass"]);
            
            if($test3 == "OK"){
                echo "PASSWORD VÁLIDO";
            }else{
                echo "PASSWORD NO VÁLIDO: " . $test3;
            }
        }else{
            echo "MESSAGE 2: " . $test2;
        } 
    }else{
        echo "MESSAGE 1: " . $test1;
    } 

}else{

    die('data no permitida');
}
?>