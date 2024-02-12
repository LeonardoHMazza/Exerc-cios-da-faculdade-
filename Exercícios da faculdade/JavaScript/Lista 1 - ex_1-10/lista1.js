function ex1(){

    let n1 = Number(document.getElementById("n1").value)
    let n2 = Number(document.getElementById("n2").value)
    let resultado = n1 - n2

    document.getElementById("subtracao").innerHTML = 
    `A subtração dos números foi: ${resultado.toFixed(2)}`
}
function ex2(){
    
    let n1 = Number(document.getElementById("n1").value)
    let n2 = Number(document.getElementById("n2").value)
    let n3 = Number(document.getElementById("n3").value)

    let resultado = n1 * n2 * n3

    document.getElementById("multi").innerHTML = 
    `A multiplicação dos números foi = ${resultado.toFixed(2)}`
}
function ex3(){
    
    let n1 = Number(document.getElementById("n1").value)
    let n2 = Number(document.getElementById("n2").value)

    let resultado = n1 / n2
    
    document.getElementById("divisao").innerHTML = 
    `A divisão dos números foi = ${resultado.toFixed(2)}`
}
function ex4(){
    
    let n1 = parseFloat(document.getElementById("n1").value)
    let n2 = parseFloat(document.getElementById("n2").value)

    let media = ((n1 * 2) + (n2 * 3)) / 2

    document.getElementById("media").innerHTML =
    `A média ponderada das notas foi = ${media.toFixed(2)}`
}
function ex5(){

    let preco = parseFloat(document.getElementById("preco").value)

    let desconto = preco - (preco * 0.1)

    document.getElementById("desconto").innerHTML =
    `O preço final com desconto foi: ${desconto.toFixed(2)}`
}
function ex6(){

    let sal = parseFloat(document.getElementById("sal").value)
    let vendas = parseFloat(document.getElementById("vendas").value)

    let comissao = vendas * 0.04
    let total = sal + comissao

    document.getElementById("total").innerHTML =
    `Você ganhou uma comissão de: R$ ${comissao.toFixed(2)}
    <br>Seu salário final foi de: R$ ${total.toFixed(2)}`
}
function ex7(){

    let peso = parseFloat(document.getElementById("peso").value)

    let peso_acima = peso + (peso * 0.15)
    let peso_abaixo = peso - (peso * 0.2)

    document.getElementById("resultado").innerHTML =
    `Seu peso 15% acima: ${peso_acima.toFixed(2)} 
    <br>Seu peso 20% abaixo: ${peso_abaixo.toFixed(2)}`
}
function ex8(){

    let peso = parseFloat(document.getElementById("peso").value)

    let gramas = peso * 1000

    document.getElementById("resultado").innerHTML = 
    `Seu peso em gramas é: ${gramas}g`
}
function ex9(){

    let base_maior = parseFloat(document.getElementById("baseMaior").value)
    let base_menor = parseFloat(document.getElementById("baseMenor").value)
    let altura = parseFloat(document.getElementById("altura").value)

    let area = ((base_maior + base_menor) * altura) / 2

    document.getElementById("resultado").innerHTML = 
    `A área do trapézio é ${area.toFixed(2)}cm²`
}
function ex10(){

    let lado1 = Number(document.getElementById("lado1").value)
    let lado2 = Number(document.getElementById("lado2").value)

    let area = lado1 * lado2

    document.getElementById("resultado").innerHTML = 
    `A área do quadrado é ${area.toFixed(2)}cm²`
}