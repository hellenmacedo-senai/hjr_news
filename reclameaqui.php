<?php

    include_once('conexao.php');

    $experiencia = $_POST['experiencia'];
    $melhoria = $_POST['melhoria'];
    $gravar = '';
    session_start();
    $email = $_SESSION['user'];
    
    if(!empty ($_POST['gravar'])){
        $gravar = $_POST['gravar'];
    }

    $sql = "SELECT id_cliente FROM cadastro WHERE email_cliente='$email'";
    $result = mysqli_query($con,$sql);
    $assoc = mysqli_fetch_assoc($result);
    $id_cliente = $assoc['id_cliente'];

    if($gravar == "Enviar Feedback"){
        $res_insert = "INSERT INTO feedback(id_cliente,experiencia,melhoria) VALUES('$id_cliente','$experiencia','$melhoria')";
        $resposta_insert = mysqli_query($con, $res_insert);
    } else{
        echo "Verifique se os dados foram incluídos corretamente <br/>";
        echo "O campo código é de preenchimento obrigatório <br/>";
    }

    // header("Location: hjr_inicio.html");
    // die();

?> 