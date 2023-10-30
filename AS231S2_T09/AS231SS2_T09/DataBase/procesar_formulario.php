<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "localhost"; // Cambia esto con la dirección de tu servidor de base de datos
    $username = "root"; // Cambia esto con tu nombre de usuario de la base de datos
    $password = "admin"; // Cambia esto con tu contraseña de la base de datos
    $dbname = "formulariomysql"; // Cambia esto con el nombre de tu base de datos

    // Crear una conexión a la base de datos
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar la conexión
    if ($conn->connect_error) {
        die("Error de conexión a la base de datos: " . $conn->connect_error);
    }

    // Obtener datos del formulario
    $carrera = $_POST['carrera'];
    $nombre = $_POST['nombre'];

    // Agrega aquí los campos restantes y asegúrate de que coincidan con los nombres en tu formulario.

    // Consulta SQL para insertar datos en la tabla
    $sql = "INSERT INTO Formulario (carrera, nombre) VALUES ('$carrera', '$nombre')";

    if ($conn->query($sql) === TRUE) {
        echo "Datos insertados correctamente";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}
?>
