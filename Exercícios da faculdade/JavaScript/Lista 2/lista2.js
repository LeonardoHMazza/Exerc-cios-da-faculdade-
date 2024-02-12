function ex15(){
    let valor = Number(document.getElementById("valor").value)
    let op = Number(document.getElementById("tipo").value)
    let tipo 
    let rendimento
    let resultado = null
    
    switch(op){
        case 1: 
            resultado = valor + ( valor * 0.03)
            rendimento = 3
            tipo = "Poupança"
            break
        case 2: 
            resultado = valor + ( valor * 0.04)
            rendimento = 4
            tipo = "Fundos de renda fixa"
            break
    }
    if (resultado != null){
        document.getElementById("resultado").innerHTML = 
        `Com seu investimento de R$ ${valor} em ${tipo} rendendo ${rendimento}% ao mês<br>
        Você estará com R$ ${resultado} em sua conta.`
    }
}
function ex16(){
    let precoAtual = Number(document.getElementById("precoAtual").value)
    let codigo = Number(document.getElementById("codigo").value)
    let desconto
    let novoPreco = null
    
    if(precoAtual >= 0 && precoAtual < 30 && codigo >= 0){
        desconto = "Sem desconto"
        document.getElementById("resultado").innerHTML =
        `Sua compra não teve desconto<br>
        O valor permanece em R$ ${precoAtual}`
    }
    else if(precoAtual >= 30 && precoAtual <= 100 && codigo >= 0){
        desconto = precoAtual * 0.1
        novoPreco = precoAtual - desconto
    }
    else if (precoAtual > 100 && codigo >= 0){
        desconto = precoAtual * 0.15
        novoPreco = precoAtual - desconto
    }
    else{
        document.getElementById("resultado").innerHTML = 
        `Inválido!! digite números positivos`
    }
    if(novoPreco != null && desconto != "Sem desconto" && codigo >= 0){
        document.getElementById("resultado").innerHTML =
        `Seu desconto foi de R$ ${desconto.toFixed(2)}<br>
        O novo preço do produto de código ${codigo} é R$ ${novoPreco}`
    }
}
function ex17(){
    let senha = Number(document.getElementById("senha").value)

    if(senha == 4531){
        document.getElementById("resultado").innerHTML =
        `Senha correta!!<br>
        Acesso permitido`
    }
    else{
        document.getElementById("resultado").innerHTML =
        `Senha INCORRETA!!<br>
        Acesso negado`
    }
}
function ex18(){
    let idade = Number(document.getElementById("idade").value)

    if(idade >= 18){
        document.getElementById("resultado").innerHTML =
        `Você tem maioridade`
    }
    else{
        document.getElementById("resultado").innerHTML =
        `Você NÃO tem maioridade`
    }
}
function ex19(){
    let h = Number(document.getElementById("altura").value)
    let sexo = document.getElementById("sexo").value
    let pesoIdeal
    if (h >= 0){
        if(sexo == 1){
            pesoIdeal = (72.7 * h) - 58
            document.getElementById("resultado").innerHTML =
            `Seu peso ideal é de ${pesoIdeal.toFixed(2)} kg`
        }
        else{
            pesoIdeal = (62.1 * h) - 44.7
            document.getElementById("resultado").innerHTML =
            `Seu peso ideal é de ${pesoIdeal.toFixed(2)} kg`
        }
    }
    else{
        document.getElementById("resultado").innerHTML =
        `Digite uma altura positiva!!`
    }
}
function ex20(){
    let idade = Number(document.getElementById("idade").value)
    let categoria = null

    if(idade >= 5 && idade <= 7){
        categoria = "Infantil"
    }
    else if(idade >= 8 && idade <= 10){
        categoria = "Juvenil"
    }
    else if(idade >= 11 && idade <= 15){
        categoria = "Adolescente"
    }
    else if(idade >= 16 && idade <= 30){
        categoria = "Adulto"
    }
    else if(idade > 30){
        categoria = "Sênior"
    }
    else{
        document.getElementById("resultado").innerHTML = 
        `Digite uma idade superior a 4 anos!`
    }
    if(categoria != null){
        document.getElementById("resultado").innerHTML = 
        `Você tem a categoria ${categoria}`
    }
}
function ex21(){
    let preco = Number(document.getElementById("preco").value)
    let codigo = Number(document.getElementById("codigo").value)
    let procedencia = null

    if(codigo == 1){
        procedencia = "Sul"
    }
    else if(codigo == 2){
        procedencia = "Norte"
    }
    else if(codigo == 3){
        procedencia = "Leste"
    }
    else if(codigo == 4){
        procedencia = "Oeste"
    }
    else if(codigo == 5 || codigo == 6){
        procedencia = "Nordeste"
    }
    else if(codigo >= 7 && codigo <= 9){
        procedencia = "Sudeste"
    }
    else if(codigo >= 10 && codigo <= 20){
        procedencia = "Centro-oeste"
    }
    else if(codigo >= 21 && codigo <= 30){
        procedencia = "Noroeste"
    }

    if(procedencia != null && preco >= 0){
        document.getElementById("resultado").innerHTML = 
        `Valor: R$ ${preco}<br>
        Código de origem: ${codigo}<br> 
        Procedência: ${procedencia}`
    }
    else{
        document.getElementById("resultado").innerHTML = 
        `Código inválido e/ou preço negativo!! `
    }
}
function ex22(){

    let idade = Number(document.getElementById("idade").value)
    let peso = Number(document.getElementById("peso").value)

    let risco = null
    
    if(idade >= 0 && idade < 20){
        if(peso >= 0 && peso < 60){
            risco = 9
        }
        else if(peso >= 60 && peso <= 90){
            risco = 8
        }
        else if(peso > 90){
            risco = 7
        }
        else{
            document.getElementById("resultado").innerHTML =
            `Inválido!! digite números positivos`
        }
    }
    else if(idade >= 20 && idade <= 50){
        if(peso <= 60){
            risco = 6
        }
        else if(peso >= 60 && peso <= 90){
            risco = 5
        }
        else if(peso > 90){
            risco = 4
        }
        else{
            document.getElementById("resultado").innerHTML =
            `Inválido!! digite números positivos`
        }
    }
    else if(idade > 50){
        if(peso <= 60){
            risco = 3
        }
        else if(peso >= 60 && peso <= 90){
            risco = 2
        }
        else if(peso > 90){
            risco = 1
        }
        else{
            document.getElementById("resultado").innerHTML =
            `Inválido!! digite números positivos`
        }
    }
    if(risco != null){
        document.getElementById("resultado").innerHTML = risco
    }
}
function ex23(){

    let codigo = Number(document.getElementById("codigo").value)
    let qtde = Number(document.getElementById("qtde").value)

    let precoUnitario
    if(codigo >= 1 && codigo <= 10){
        precoUnitario = 10
    }
    else if(codigo >= 11 && codigo <= 20){
        precoUnitario = 15
    }
    else if(codigo >= 21 && codigo <= 30){
        precoUnitario = 20
    }
    else if(codigo >= 31 && codigo <= 40){
        precoUnitario = 30
    }
    else{
        document.getElementById("resultado").innerHTML = "Código inválido!!"
    }

    let precoTotal
    if(precoUnitario != null && qtde >= 0){
        precoTotal = qtde * precoUnitario
        let desconto
        if(precoTotal >= 0 && precoTotal < 250){
            desconto = precoTotal * 0.05
        }
        else if(precoTotal >= 250 && precoTotal <= 500){
            desconto = precoTotal * 0.1
        }
        else{
            desconto = precoTotal * 0.15
        }
        let precoFinal = precoTotal - desconto

        document.getElementById("resultado").innerHTML = 
        `Preço unitário: R$ ${precoUnitario}<br>
        Preço total da nota: R$ ${precoTotal}<br>
        Valor do desconto: R$ ${desconto}<br>
        Preço Final: R$ ${precoFinal}`
    }
    else{
        document.getElementById("resultado").innerHTML = "Código e/ou quantidade inválidos!!"
    }
}
function ex24(){
    let preco = Number(document.getElementById("preco").value)
    let categoria = Number(document.getElementById("categoria").value)
    let situacao = Number(document.getElementById("situacao").value)

    if(preco < 0){
        document.getElementById("resultado").innerHTML = "Preço inválido!!"
    }
    else{
        let aumento
        switch(categoria){
            case 1: if(preco <= 25){
                        aumento = preco * 0.05
                    }
                    else{
                        aumento = preco * 0.12
                    }
                    break
            case 2: if(preco <= 25){
                        aumento = preco * 0.08
                    }
                    else{
                        aumento = preco * 0.15
                    }
                    break
            case 3: if(preco <= 25){
                        aumento = preco * 0.1
                    }
                    else{
                        aumento = preco * 0.18
                    }
                    break
        }
        let imposto
        if(categoria == 2 || situacao == "1"){
            imposto = preco * 0.05
        }
        else{
            imposto = preco * 0.08
        }
        let novoPreco = preco + aumento - imposto

        let classificacao
        if(novoPreco < 50){
            classificacao = "Barato"
        }
        else if(novoPreco >= 50 && novoPreco < 120){
            classificacao = "Normal"
        }
        else{
            classificacao = "Caro"
        }
        document.getElementById("resultado").innerHTML = 
        `Aumento: R$ ${aumento.toFixed(2)}<br>
        Imposto: R$ ${imposto.toFixed(2)}<br>
        Novo preço: R$ ${novoPreco.toFixed(2)}<br>
        Classificação: ${classificacao}`
    }
}
function ex25(){
    let hExtra = Number(document.getElementById("hExtra").value)
    let hFalta = Number(document.getElementById("hFalta").value)
    let h = hExtra - (2 / 3 * (hFalta))
    let premio = null

    h = h * 60

    if(h >= 2400){
        premio = 500
    }
    else if(h > 1800 && h < 2400){
        premio = 400
    }
    else if(h >= 1200 && h < 1800){
        premio = 300
    }
    else if(h >= 600 && h < 1200){
        premio = 200
    }
    else if(h > 600){
        premio = 100
    }
    else{
        document.getElementById("resultado").innerHTML =
        `Sem prêmio!!`
    }

    if(premio != null){
        document.getElementById("resultado").innerHTML =
        `Suas horas em minutos foi: ${h.toFixed(0)}<br>
        Parabéns!! seu prêmio foi de R$ ${premio}`
    }
}