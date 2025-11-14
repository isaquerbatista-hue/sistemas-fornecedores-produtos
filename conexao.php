<?php
$servername = "localhost";
$username = "root";
$password = "Senai@118";
$dbname = "sistema";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Adiciona a coluna 'imagem' à tabela 'produtos' se ela não existir
$sql = "SHOW COLUMNS FROM pacotes LIKE 'imagem'";
$result = $conn->query($sql);
if ($result->num_rows == 0) {
    $sql = "ALTER TABLE pacotes ADD COLUMN imagem VARCHAR(255)";
    $conn->query($sql);
}

// Adiciona a coluna 'imagem' à tabela 'fornecedores' se ela não existir
$sql = "SHOW COLUMNS FROM patrocinadores LIKE 'imagem'";
$result = $conn->query($sql);
if ($result->num_rows == 0) {
    $sql = "ALTER TABLE patrocinadores ADD COLUMN imagem VARCHAR(255)";
    $conn->query($sql);
}
?>