<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../config/conexion.php';


// Consulta datos y recepciona una clave para consultar dichos datos con dicha clave
if (isset($_GET["consultar"])){
    $sql = mysqli_query($conexion,"SELECT * FROM actividades WHERE id=".$_GET["consultar"]);
    if(mysqli_num_rows($sql) > 0){
        $actividades = mysqli_fetch_all($sql,MYSQLI_ASSOC);
        echo json_encode($actividades);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}
//borrar pero se le debe de enviar una clave ( para borrado )
if (isset($_GET["borrar"])){
    $sql = mysqli_query($conexion,"DELETE FROM actividades WHERE id=".$_GET["borrar"]);
    if($sql){
        echo json_encode(["success"=>1]);
        exit();
    }
    else{  echo json_encode(["success"=>0]); }
}
//Inserta un nuevo registro y recepciona en método post los datos de nombre y correo
if(isset($_GET["insertar"])){
    $data = json_decode(file_get_contents("php://input"));
    $nombre_actividad=$data->nombre_actividad;
   
        if($nombre_actividad!=""){
            
    $sql = mysqli_query($conexion,"INSERT INTO actividades (nombre_actividad) VALUES('$nombre_actividad') ");
    echo json_encode(["success"=>1]);
        }
    exit();
}
// Actualiza datos pero recepciona datos de nombre, correo y una clave para realizar la actualización
if(isset($_GET["actualizar"])){
    
    $data = json_decode(file_get_contents("php://input"));

    $id=(isset($data->id))?$data->id:$_GET["actualizar"];
    $nombre_actividad=$data->nombre_actividad;
  
    
    $sql = mysqli_query($conexion,"UPDATE actividades SET nombre_actividad='$nombre_actividad' WHERE id='$id'");
    echo json_encode(["success"=>1]);
    exit();
}
// Consulta todos los registros de la tabla empleados
$sql = mysqli_query($conexion,"SELECT * FROM actividades ");
if(mysqli_num_rows($sql) > 0){
    $actividades = mysqli_fetch_all($sql,MYSQLI_ASSOC);
    echo json_encode($actividades);
}
else{ echo json_encode([["success"=>0]]); }


?>

