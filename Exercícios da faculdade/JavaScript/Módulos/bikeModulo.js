function principal(){
    let vet = []
    let op
    do{
        op = parseInt(prompt(`O que deseja realizar?\n
        1- Cadastrar bike\n
        2- Calcular a Media de preços\n
        3- Ver a bike mais antiga\n
        4- Quantidade de bikes da marca caloi\n
        5- Quantidade de bikes Aro 29\n
        6- Bike com maior quadro\n
        7- sair`))

        switch(op){
            case 1: cadastraBike(vet); break

            case 2: calculaMediaPrecos(vet); break

            case 3: bikeMaisAntiga(vet); break

            case 4: bikeMarcaCaloi(vet); break
            
            case 5: bikesAro29(vet); break

            case 6: bikeMaiorQuadro(vet); break

            case 7: alert("Programa encerrado"); break

            default: alert("Opção inválida");
        }
    } while(op != 7)    
}
function cadastraBike(vet){
    let obj = {
        marca: prompt("Informe a marca da bike"),
        modelo: prompt("Informe o modelo da bike"),
        quadro: parseInt(prompt("Informe o tamanho do quadro")),
        aro: parseInt(prompt("Informe o tamanho do aro")),
        ano: parseInt(prompt("Informe o ano")),
        preco: parseFloat(prompt("Informe o preço"))
    }
    vet.push(obj)
    console.log("Bike inserida com sucesso")
}
function calculaMediaPrecos(vet){
    if (vet.length == 0){
        console.log(`Sem bikes no vetor`)
    }
    else {
        let soma = 0
        for(let i=0;i<vet.length;i++){
            soma = soma + vetor[i].preco
        }
        console.log(`Média de preço das bikes ${soma/vet.length}`)
    }
}
function bikeMaisAntiga(vet){
    let maisAntiga = []
    maisAntiga[0] = vet[0]

    for(let i=1; i<vet.length; i++){
        if(vet[i].ano < maisAntiga[0].ano){
            maisAntiga = [] //zera o vetor
            maisAntiga[0] = vet[i]
        }
        else if(vet[i].ano == maisAntiga[0].ano){
            maisAntiga.push(vet[i]) // mais uma com o mesmo ano 
        }
    }
    console.log(`Bike(s) mais antiga(s) ${maisAntiga}`)
}
function bikeMarcaCaloi(vet){
    let caloi = []
    for(let i=0; i<vet.length; i++){
        if(vet[i].marca == 'CALOI'){
            caloi.push(vet[i])
        }
    }
    console.log(`Bikes da marca caloi ${caloi}`)
}
function bikesAro29(vet){
    let aro29 = 0
    for(let i=0; i<vet.length; i++){
        if(vet[i].aro == 29){
            aro29++
        }
    }
    console.log(`Quantidade de bikes com aro 29 ${aro29}`)
}
function bikeMaiorQuadro(vet){
    let maiorQuadro = []
    maiorQuadro[0] = vet[0]

    for(let i=1; i<vet.length; i++){
        if(vet[i].quadro > maiorQuadro[0].quadro){
            maiorQuadro = [] //zera o vetor
            maiorQuadro[0] = vet[i]
        }
        else if(vet[i].quadro == maiorQuadro[0].quadro){
            maiorQuadro.push(vet[i]) // mais uma com o mesmo ano 
        }
    }
    console.log(`Bike(s) com mairo quadro ${maiorQuadro}`)
}
