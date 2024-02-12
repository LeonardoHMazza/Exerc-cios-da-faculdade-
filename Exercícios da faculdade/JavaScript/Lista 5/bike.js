function bike(){
    let vet = []
    for(let i=0; i<3; i++){
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

    // 1) Média de preços
    let soma = 0
    for(let i=0; i<vet.length; i++){
        soma = soma + vet[i].preco
    }
    console.log(`Média de preço das bikes ${soma / vet.length}`)

    // 2) Bike mais antiga
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

    // 3) Bikes da marca caloi
    let caloi = []
    for(let i=0; i<vet.length; i++){
        if(vet[i].marca == 'CALOI'){
            caloi.push(vet[i])
        }
    }
    console.log(`Bikes da marca caloi ${caloi}`)

    // 4) Aro 29
    let aro29 = 0
    for(let i=0; i<vet.length; i++){
        if(vet[i].aro == 29){
            aro29++
        }
    }
    console.log(`Quantidade de bikes com aro 29 ${aro29}`)

    // 5) maior quadro
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