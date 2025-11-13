<?php
session_start();
include('conexao.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usuario = $_POST['usuario'];
    $senha = md5($_POST['senha']);

    $sql = "SELECT * FROM usuarios WHERE usuario='$usuario' AND senha='$senha'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $_SESSION['usuario'] = $usuario;
        header('Location: index.php');
        exit();
    } else {
        $error = "Usuário ou senha inválidos.";
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="1.css">
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <h1>Login - Desenvolvedores</h1>

            <form method="post" action="">
                <label for="usuario">Usuário:</label>
                <input type="text" name="usuario" placeholder="Digite seu usuário" required>

                <label for="senha">Senha:</label>
                <input type="password" name="senha" placeholder="Digite sua senha" required>

                <button type="submit">Entrar</button>
                <?php if (isset($error)) echo "<p class='message error'>$error</p>"; ?>
            </form>
        </div>
    </div>
</body>
</html>
