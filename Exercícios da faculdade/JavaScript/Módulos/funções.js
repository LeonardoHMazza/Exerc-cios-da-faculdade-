function principal(){
    soma(4, 8)
    console.log(`Soma é ${soma2(6, 9)}`)
    console.log(`Soma é ${soma3()}`)

    // Passagem de parâmetro por valor -> passa-se o valor da variável
    // Qual o efeito colateral disso?
    // A mudança do valor da variável dentro da função não altera a variável de fora da função
    // OBS: vale quando se passa como parâmetro um int, float, boolean ou char, ou seja um tipo primitivo de dado

    let idade = 18
    alterarIdade(idade)
    console.log(idade) // 18

    // Passagem de parâmetro por referência -> passa-se a referência da variável
    // Qual o efeito disso?
    // A mudança do valor da variável dentro da função altera a variável de fora da função
    // OBS: vale quando se passa como parâmetro um vetor, uma matriz ou um objeto 

    let vet = []
    vet[0] = 10; vet[1] = 11; vet[2] = 12;
    alteraVetor(vet)
    console.log(`Fora da função ${vet}`) 
}

function alteraVetor(vet){
    vet[0] = vet[0] + 10
    vet[1] = vet[1] + 10
    vet[2] = vet[2] + 10
    
    console.log(`Dentro da função ${vet}`)
}

function alterarIdade(){
    idade = idade + 10
    console.log(`Dentro da função ${idade}`)// 28
}

function soma(a, b){
    console.log(`Soma é ${a+b}`)
}

function soma2(a, b){
    return (a+b)
}

function soma3(){
    let a = parseInt(prompt('Informe valor de A'))
    let b = parseInt(prompt('Informe valor de B'))
    return a+b
}