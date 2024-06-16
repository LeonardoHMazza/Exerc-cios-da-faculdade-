// Leonardo Henrique Mazza
/* 
    Trabalho - Parte 2

    Fazer um programa resolva o problema de Josephus, usando: 
    ◦ Lista encadeada. 
    ◦ Vetor. 
    ◦ Discuta vantagens e desvantagens.

    O problema: é feito um círculo de N pessoas numeradas de 1 a N. Em seguida, percorre a 
    roda a partir de 1 eliminando cada M-ésima pessoa até que a roda seja reduzida a uma 
    só pessoa. Devolver o número da pessoa que sobrou.
*/

function No(data) {
    this.data = data;
    this.proximo = null;
} 

function ListaCircular() {
    this.cabeca = null;
    this.cauda = null;
    
    this.adicionarNoFinal = function(data) {
        const novoNo = new No(data);
        if (!this.cabeca) {
            this.cabeca = novoNo;
            this.cauda = novoNo;
            novoNo.proximo = this.cabeca; 
        } else {
            this.cauda.proximo = novoNo;
            novoNo.proximo = this.cabeca;
            this.cauda = novoNo;
        }
    };

    this.removerNo = function(no) {
        let atual = this.cabeca;
        let anterior = null;
        while (atual) {
            if (atual === no) {
                if (atual === this.cabeca) {
                    this.cabeca = atual.proximo;
                    this.cauda.proximo = this.cabeca; 
                } else if (atual === this.cauda) {
                    this.cauda = anterior;
                    this.cauda.proximo = this.cabeca; 
                } else {
                    anterior.proximo = atual.proximo;
                }
                return true;
            }
            anterior = atual;
            atual = atual.proximo;
        }
        return false;
    };

    this.exibirLista = function() {
        let atual = this.cabeca;
        let resultado = "";
        do {
            resultado += atual.data + " -> ";
            atual = atual.proximo;
        } while (atual !== this.cabeca);
        console.log(resultado);
    };
}

function jogoDoCirculo(N, M) {
    const lista = new ListaCircular();

    for (let i = 1; i <= N; i++) {
        lista.adicionarNoFinal(i);
    }

    let atual = lista.cabeca;
    let count = 0;

    while (lista.cabeca !== lista.cauda) {
        count++;
        if (count === M) {
            console.log("Pessoa removida:", atual.data);
            const proximo = atual.proximo;
            lista.removerNo(atual);
            atual = proximo;
            count = 0;
        } else {
            atual = atual.proximo;
        }
    }

    console.log("A última pessoa no círculo é:", lista.cabeca.data);
}

const N = 10; 
const M = 3; 
jogoDoCirculo(N, M);