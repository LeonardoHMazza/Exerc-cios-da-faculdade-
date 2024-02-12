function exemploObjeto(){
    // let nome
    // let estoque
    // let classificacao

    //criar objeto
    let objeto = {
        nome: prompt("informe nome"),
        estoque: Number(prompt("Informe estoque")),
        classificacao: prompt("informe a classificação")
    }

    console.log(objeto)
    console.log(objeto.nome)
    console.log(objeto.estoque)
    console.log(objeto.classificacao)

    //outra forma
    let objeto2 = new Object()
    
    objeto2.nome = prompt("informe nome"),
    objeto2.estoque = Number(prompt("Informe estoque")),
    objeto2.classificacao = prompt("informe a classificação")
}
function aplicacaoObjeto(){
    let vet1 = []
    // entrada de dados
    for(let i=0;i<3;i++){

        let objeto1 = {
            nomes: prompt(`Informe o nome do computador ${i+1}`),
            estoque: Number(prompt(`Informe o estoque do computador ${i+1}`)),
            classificacao: prompt(`Informe a classificação do computador ${i+1}`).toUpperCase()
        }
        while(objeto1.estoque < 0){
            objeto1.estoque = Number(prompt(`Informe o estoque positivo do computador ${i+1}`))
        }
        while(objeto1.classificacao != "GAMER" && objeto1.classificacao != "NOTEBOOK" && objeto1.classificacao != "DESKTOP"){
            objeto1.classificacao = prompt(`Informe a classificação correta do computador ${i+1}`).toUpperCase()
        }
        vet1.push(objeto1)
    }
    let vet2 = []
    for(let i=0;i<4;i++){

        let objeto2 = {
            nomeCompra: prompt(`Informe o nome do computador que deseja comprar`),
            qtdCompra: Number(prompt(`Informe a quantidade que deseja comprar`)),
            clasCompra: prompt(`Informe a classificação do computador que deseja comprar`).toUpperCase()
        }
        vet2.push(objeto2)
        
        // verifica se o produto existe
        let achou = false
        for(let j=0;j<3;j++){ // para percorrer os vetores dos produtos
            if(vet2.nomeCompra == vet1[j].nomes && vet2.clasCompra == vet1[j].classificacao){
                achou = true
                // verifica se tem estoque
                if(vet2.qtdCompra <= vet1[j].estoque){
                    console.log(`Venda realizada com sucesso`)
                    vet1[j].estoque = vet1[j].estoque - vet2.qtdCompra
                }
                else{
                    console.log(`Não tem estoque suficiente`)
                }
            }
        }
        if(!achou){
            console.log(`Produto não existe`)
        }
    }
    let maiorEstoque = 0
    let menorEstoque = Infinity
    let achou = false
    for(let i=1;i<3;i++){
        if(vet1[i].classificacao == "NOTEBOOK"){
            achou = true
            if(maiorEstoque > vet1[i].estoque){
                maiorEstoque = vet1[i].estoque
            }
            if(menorEstoque < vet1[i].estoque){
                menorEstoque = vet1[i].estoque
            }
        }
    }
    if(achou){
        console.log(nomes[estoque.indexOf(menorEstoque)])
        console.log(nomes[estoque.indexOf(maiorEstoque)])
    }
}