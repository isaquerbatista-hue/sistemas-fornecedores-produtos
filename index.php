<?php include('valida_sessao.php'); ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Painel Principal</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <header class="topbar">
        <div class="logo">Ocean Trip</div>
        <nav>
            <ul>
                <li><a href="logout.php" class="logout">Sair</a></li>
            </ul>
        </nav>
    </header>

    <main class="dashboard">
        <div class="welcome">
            <h2>Bem-vindo(a), <?php echo htmlspecialchars($_SESSION['usuario']); ?></h2>
            <p>Gerencie seus Patrocinadores e pacotes com eficiência e praticidade.</p>
        </div>

        <div class="cards">
            <div class="card">
                <h3>🛳️ Cadastrar Pacotes</h3>
                <p>Adicione novos produtos ao sistema de forma rápida e segura.</p>
                <a href="cadastro_produto.php" class="btn">Acessar</a>
            </div>

            <div class="card">
                <h3>🏢 Cadastrar Patrocinadores</h3>
                <p>Gerencie informações de fornecedores e mantenha tudo atualizado.</p>
                <a href="cadastro_fornecedor.php" class="btn">Acessar</a>
            </div>

            <div class="card">
                <h3>📋 Listar Pacotes</h3>
                <p>Visualize e edite o catálogo completo de produtos disponíveis.</p>
                <a href="listagem_produtos.php" class="btn">Ver Lista</a>
            </div>
        </div>
    </main>

    <footer>
        <p>© 2025 Ocean Trip | Painel de Controle</p>
    </footer>
</body>
</html>

