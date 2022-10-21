<?php

    include_once('conexao.php');

    $nome_cliente= '';
    $email_cliente= '';
    $senha_cliente= '';
    $nasc_cliente= '';
    $gravar = '';
    
    if(!empty ($_POST['nome'])){
        $nome_cliente= $_POST['nome'];
    }

    if(!empty ($_POST['email'])){
        $email_cliente = $_POST['email'];
    }

    if(!empty ($_POST['senha'])){
        $senha_cliente = $_POST['senha'];
    }

    if(!empty ($_POST['data_nasc'])){
        $nasc_cliente = $_POST['data_nasc'];
    }
    
    if(!empty ($_POST['gravar'])){
        $gravar = $_POST['gravar'];
    }

    if($gravar == "gravar Cadastro"){
        $res_insert = "INSERT INTO cadastro(nome, email, senha, data_nasc) VALUES ('$nome_cliente', '$email_cliente', '$senha_cliente', '$nasc_cliente')";
        $resposta_insert = mysqli_query($con, $res_insert);
    }
   

else{
    echo "Verifique se os dados foram incluídos corretamente <br/>";
    echo "O campo código é de preenchimento obrigatório <br/>";
}

header("Location: hjr_pagamento.html");
die();
?> 