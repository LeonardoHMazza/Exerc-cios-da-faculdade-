// Leonardo Henrique Mazza
/*
    Trabalho - Parte 3

    Fazer um programa que utilize Hashing Linear para manipular chaves 
    (representadas como um caracter) e possua as seguintes funções: 
    ◦ inserir chaves na tabela hash; 
    ◦ buscar chaves na tabela hash.
*/
function criarTabelaHash(tamanho) {
    return new Array(tamanho).fill(null)
}

function hash(chave, tamanho) {
    return chave.charCodeAt(0) % tamanho
}

function inserir(tabela, tamanho, chave) {
    let index = hash(chave, tamanho)
    let indexOriginal = index
    let step = 1

    while (tabela[index] !== null) {
        index = (indexOriginal + step) % tamanho
        step++
     
        if (index === indexOriginal) {
            console.log("A tabela hash está cheia.")
            return
        }
    }

    tabela[index] = chave
    console.log(`Chave "${chave}" inserida no índice ${index}.`)
}

function procurar(tabela, tamanho, chave) {
    let index = hash(chave, tamanho)
    let indexOriginal = index
    let step = 1

    while (tabela[index] !== chave) {
        if (tabela[index] === null) {
            return `Chave "${chave}" não encontrada.`
        }
        index = (indexOriginal + step) % tamanho
        step++

        if (index === indexOriginal) {
            return `Chave "${chave}" não encontrada.`
        }
    }

    return `Chave "${chave}" encontrada no índice ${index}.`
}

function principal(){
    const tamanho = 10
    const tabelaHash = criarTabelaHash(tamanho)

    inserir(tabelaHash, tamanho, 'A')
    inserir(tabelaHash, tamanho, 'B')
    inserir(tabelaHash, tamanho, 'C')
    inserir(tabelaHash, tamanho, 'K') 

    console.log(procurar(tabelaHash, tamanho, 'A')) 
    console.log(procurar(tabelaHash, tamanho, 'B')) 
    console.log(procurar(tabelaHash, tamanho, 'C')) 
    console.log(procurar(tabelaHash, tamanho, 'K')) 
    console.log(procurar(tabelaHash, tamanho, 'D')) 
}

principal()