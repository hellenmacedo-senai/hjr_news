<?php
    session_start();
    $email = $_SESSION['e'];
    $_SESSION['e'] = $email; 
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo.css"/><!-- Link para Estilo Externo -->
    <script src="dados.js" defer></script>
    <link rel="icon" href="fav_icon.png" type="image/png"> <!-- Link para Fav Icon -->
    <title> Dados Adicionais </title>
</head>
<body>

    <div class="body_dados">
    
        <div class="superior_dados">
    
            <div class="priPrt_superior_dados">
                <form method="post" action="dados2.php">
                    <button type="submit" id="botao_voltar"><div class="voltar_superior_dados"> <img src="voltar.png" width="30px"></div></button>
                </form>
                <div class="txtdados_superior_dados">Dados Adicionais</div>
            </div>
            <div class="logo"><img src="logo.png" ; height="23px"></div>
    
        </div>
    
        <div class="conteudo_dados">
    
            <form action="dados3.php" method="post" class="conteudo_dados">
    
                <div class="nasc_dados">
                    <div class="img_nasc_cad"><img src="nasc.png" width="30px"></div>
                    <div class="nasc_cad_input"> <input type="text" name="nasc" id="nasc_cad" placeholder="Data de Nascimento" minlength="10" maxlength="10" required></div>
                </div>
                <small id="textNasc_dados"></small>

                <div class="endereco_dados">
                    <div class="img_endereco_cad"><img src="enderecoDados.png" width="30px"></div>
                    <div class="endereco_cad_input"> <input type="text" name="endereco" id="endereco_cad" placeholder="Endereço" minlength="5" maxlength="150" required></div>
                </div>
                <small id="textEndereco_dados"></small>

                <input type="submit" name="enviar" value="Enviar" id="botao_dados">
                <small id="textBotao_dados"></small>
    
            </form>
    
        </div>
    
    </div>

</body>
</html>