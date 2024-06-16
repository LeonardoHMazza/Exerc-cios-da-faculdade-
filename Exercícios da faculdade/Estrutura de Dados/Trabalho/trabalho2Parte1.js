// Leonardo Henrique Mazza
/*
    Trabalho - Parte 1

    Fazer uma função que verifique se uma dada expressão aritmética possui ou não 
    parênteses, colchetes e chaves corretamente utilizados, tanto número 
    quanto posição.
*/

function verificaExpressao(expressao) {
    const pilha = [];
    const map = {
        "(": ")",
        "[": "]",
        "{": "}"
    };

    for (let i = 0; i < expressao.length; i++) {
        const caracter = expressao[i];
        
        if (caracter === '(' || caracter === '[' || caracter === '{') {
            pilha.push(caracter);
        } 
        else if (caracter === ')' || caracter === ']' || caracter === '}') {
            const Ultimo = pilha.pop();
            if (map[Ultimo] !== caracter) {
                return false;
            }
        }
    }

    return pilha.length === 0;
}

let expressao = ("{}")

console.log(verificaExpressao(expressao));