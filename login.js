const emailLogin = document.querySelector('#email_login')
const textEmailLogin = document.querySelector('#textEmail_login')
const senhaLogin = document.querySelector('#senha_login')
const textSenhaLogin = document.querySelector('#textSenha_login')
const botaoLogin = document.querySelector('#botao_login')
const textBotaoLogin = document.querySelector('#textBotao_login')

// let db = openDatabase('FIGMA', 'v1.0', 'MyBank', 2*1024*1024)

botaoLogin.addEventListener('click', function(e) {
    e.preventDefault() 

    if(emailLogin.value =='' || senhaLogin.value == ''){
        textBotaoLogin.textContent = 'Você Precisa Preencher Todos os Campos!'
    }else{
        let emailVerificacao

        textBotaoLogin.textContent = ''
        
        // db.transaction(function(tx){
        //     tx.executeSql("DECLARE @EmailLogin NVARCHAR(100)")
        //     emailVerificacao = tx.executeSql("SET @EmailLogin = SELECT email FROM tabela WHERE email='spezia548@gmail.com'")
        // })

        // let sql = 'SELECT email FROM tabela WHERE email='+'"'+emailLogin.value+'"' 
        // console.log(sql)

        // let emailVerificacao = db.transaction(function(tx){
        //     tx.executeSql("SELECT email FROM tabela WHERE email='spezia548@gmail.com'")
        // })

        // db.transaction(function(tx){
        //     tx.executeSql('SELECT email, senha FROM tabela WHERE email="spezia548@gmail.com"', [], function(linhas,resultado){
        //         console.log(resultado)
        //         linhas = resultado.rows.length
        //         for(i=0; i<linhas; i++){
        //             console.log(resultado.rows.item(i).email, resultado.rows.item(i).senha)
        //         }

        //         emailVerificacao = resultado.rows.item(i).email
        //         console.log(emailVerificacao)
        //     })
        // })


        

    }
})

emailLogin.addEventListener('keyup', function() {
    if(validarEmailLogin(emailLogin.value) !== true){
        textEmailLogin.textContent = '*O Formato do Email Deve Ser com Letras Minúsculas ex.: teste@gmail.com'    
    }else{
        textEmailLogin.textContent = ''
    }
}) 

function validarEmailLogin(e_mail){
    let padraoEmailLogin = /^[a-z0-9.]+@[a-z0-9]+\.([a-z]+)?$/
    return padraoEmailLogin.test(e_mail)
}

senhaLogin.addEventListener('keyup', function() {
    if(validarSenhaLogin(senhaLogin.value) !== true){
        textSenhaLogin.textContent = '*A Senha Deve Conter no Mínimo 6 Caracteres, com letra maiúscula, minúscula, número e caractere especial. ex.: Br@sil2022'
    }else{
        textSenhaLogin.textContent = ''
    }
})

function validarSenhaLogin(senhaValor){
    let padraoSenhaLogin = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$*&@#])[0-9a-zA-Z$*&@#]{6,}$/

    return padraoSenhaLogin.test(senhaValor)
}
