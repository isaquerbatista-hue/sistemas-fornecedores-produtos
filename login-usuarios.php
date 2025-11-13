<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <h1>Login</h1>

            <form method="post" action="">
                <label for="usuario">Usuário:</label>
                <input type="text" name="usuario" placeholder="Digite seu usuário" required>

                <label for="senha">Senha:</label>
                <input type="password" name="senha" placeholder="Digite sua senha" required>

                <button type="submit">Entrar</button>
            </form>

            <p class="dev-login">
                <a href="login.php">Login  para desenvolvedores</a>
            </p>
        </div>
    </div>
</body>
</html>
