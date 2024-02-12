let votacao = () => {

    let partidos = [] // cadastra os partidos
    
    for(let i=0; i<5; i++){
        let obj = { // Cria o objeto
            codigo: parseInt(prompt("Informe o código do partido")),
            nome: prompt("Informe o nome do partido"),
            sigla: prompt("Informe a sigla do partido"),
            presidente: prompt("Informe o presidente do partido"),
            qtde: parseInt(prompt("Informe a quantidade de candidatos"))
        }
        // Verifica se o código já existe ou < 0
        while(partidos.some((item) => item.codigo == obj.codigo || obj.codigo < 0)){  
            obj.codigo = parseInt(prompt("Código já existe. Informe novo código"))
        }
        while(partidos.some((item) => item.sigla == obj.sigla)){  
            obj.sigla = parseInt(prompt("Sigla já existe. Informe novo código"))
        }
        partidos.push(obj) // Insere o objeto no vetor
        alert("Partido cadastrado com sucesso!!")
    }
    
    // Cadastrar os políticos
    let politicos = []
    for(let i=0; i<5; i++){
        let obj = {
            codPartido: parseInt(prompt("Informe o código do partido do candidato")),
            nome: prompt("Informe o nome do candidato"),
            qtde: 0,
            cargo: prompt("Informe o cargo do candidato")
        }
        while(!partidos.some((item) => item.codigo == obj.codPartido)){
            obj.codPartido = parseInt(prompt("Partido não encontrado, Informe um novo"))
        }
        while(politicos.some((item) => item.nome == obj.nome)){
            obj.nome = prompt("Nome já existe, informe outro nome")
        }
        politicos.push(obj)
        alert("Político cadastrado com sucesso!!")
    }

    // Realizar 10 votos
    for(let i=0; i<10; i++){
        let votacao = {
            partido: parseInt(prompt("Informe código do partido")),
            candidato: prompt("Informe o nome do candidato")
        }
        let posicao = politicos.findIndex((item) => item.codPartido == votacao.partido && item.nome == votacao.candidato)
        if(posicao != -1){
            // Achou
            politicos[posicao].qtde++
            alert("Votaçao realizada com sucesso!!")
        }
        else{ // Não achou
            alert("Partido e/ou candidato não existem")
        }
    }

    // candidato com mais votos
    let candidatoMaisVotado = politicos[0] 
    for(let i=0; i<politicos.length; i++){
        if(politicos[i].qtde > candidatoMaisVotado.qtde){
            candidatoMaisVotado = politicos[i]
        }
    }
    console.log(candidatoMaisVotado)
}