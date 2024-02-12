function principal(){
    let farmacias = []
    let remedios = []
    let op

    do{
        op = parseInt(prompt(`O que deseja realizar?\n
        1- Cadastrar farmácia\n
        2- Cadastrar remédio\n
        3- Realizar compra\n
        4- Sair`))

        switch(op){
            case 1: cadastraFarmacias(farmacias); break

            case 2: cadastraRemedios(remedios, farmacias); break

            case 3: compra(remedios); break

            case 4: alert("Programa encerrado"); break

            default: alert("Opção inválida");
        }
    }while(op != 4)
}
function cadastraFarmacias(farmacias){
    let objeto = {
        codigo: parseInt(prompt(`Informe o código da farmácia`)),
        nome: prompt(`Informe o nome da farmácia`),
        endereco: prompt(`Informe o endereço da farmácia`)
    }
    while (farmacias.some( (item) => item.codigo == objeto.codigo )){
        objeto.codigo = parseInt(prompt(`Código já existente. Informe outro código`))
    }
    farmacias.push(objeto)
}
function cadastraRemedios(remedios, farmacias){
    let objeto = {
        codFarmacia: parseInt(prompt('Código da farmácia')),
        nome: prompt('Nome do remédio').toUpperCase(),
        qtde: parseInt(prompt('Qtde do remédio')),
        preco: parseFloat(prompt('Preço do remédio'))
    }
    while(!farmacias.some( (item) => item.codigo == objeto.codFarmacia)){
        objeto.codFarmacia = 
                parseInt(prompt('Farmácia não existe. Informe novamente o código'))
    }
    let indice = remedios.findIndex( (item) => item.codFarmacia == objeto.codFarmacia && item.nome == objeto.nome)
    if (indice == -1){ 
        remedios.push(objeto) 
    }
    else { 
        remedios[indice].qtde = remedios[indice].qtde + objeto.qtde
    }
}
function compra(remedios){
    let venda = {
        farmacia: parseInt(prompt('Informe código da farmácia')),
        remedio: prompt('Informe nome do remédio').toUpperCase(),
        qtde: parseInt(prompt('Informe qtde para compra'))
    }
    
    if (remedios.some( (item) =>
        (item.codFarmacia == venda.farmacia && item.remedio == venda.remedio) )){

            let indice = remedios.findIndex((item => 
                item.nome == venda.remedio && item.codFarmacia == venda.remedio))
            if (venda.qtde <= remedios[indice].qtde){
                remedios[indice].qtde = remedios[indice].qtde - venda.qtde
                alert('Venda realizada com sucesso')
            }
            else {
                alert('Estoque insuficiente')
            }
    }
    else {
            alert('Farmácia ou remédio inexistente')
    }
}