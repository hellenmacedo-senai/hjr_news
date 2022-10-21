<?php      
    include('conexao.php');  
    $email_cliente = $_POST['email_cliente'];  
    $senha_cliente = $_POST['senha_cliente'];  
      
      
        $sql = "SELECT senha_cliente FROM cadastro WHERE email_cliente='$email_cliente'";
        $result = mysqli_query($con,$sql);
        $assoc = mysqli_fetch_assoc($result);
        if ($assoc['senha_cliente'] == $senha_cliente) {
            session_start();
            $_SESSION['user'] = $email_cliente;
            header("Location: hjr_inicio.html");
            die();
        } else {
            header("Location: hjr_login.html");
            die();
        }
?> 