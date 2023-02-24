
<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../config/conexion.php';


// Consulta datos y recepciona una clave para consultar dichos datos con dicha clave
if (isset($_GET["consultar"])){
    $sql = mysqli_query($conexion,"SELECT * FROM registros WHERE id=".$_GET["consultar"]);
    if(mysqli_num_rows($sql) > 0){
        $registros = mysqli_fetch_all($sql,MYSQLI_ASSOC);
        echo json_encode($registros);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}
//borrar pero se le debe de enviar una clave ( para borrado )
if (isset($_GET["borrar"])){
    $sql = mysqli_query($conexion,"DELETE FROM registros WHERE id=".$_GET["borrar"]);
    if($sql){
        echo json_encode(["success"=>1]);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}



 //Consulta todos los registros de la tabla empleados
 $sql = mysqli_query($conexion,"SELECT * FROM registros ");
 if(mysqli_num_rows($sql) > 0){
     $registros = mysqli_fetch_all($sql,MYSQLI_ASSOC);
     echo json_encode($registros);
 }
 else{ echo json_encode([["success"=>0]]); }

?>
