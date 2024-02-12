class Carro {

    constructor(marca, modelo, ano, valor) {

        this.marca = marca;

        this.modelo = modelo;

        this.ano = ano;

        this.valor = valor;

        this.notas = [0, 0, 0, 0, 0];

    }

}
 
let carros = [];

let notasMatriz = [];
 
function cadastrarCarros() {

    for (let i = 0; i < 4; i++) {

        let marca = prompt("Digite a marca do carro: ");

        let modelo = prompt("Digite o modelo do carro: ");

        let ano = parseInt(prompt("Digite o ano do carro: "));

        let valor = parseFloat(prompt("Digite o valor do carro: "));

        let carro = new Carro(marca, modelo, ano, valor);

        carros.push(carro);
 
        for (let j = 0; j < 5; j++) {

            let nota = parseFloat(prompt("Digite a nota " + (j + 1) + " do carro: "));

            carro.notas[j] = nota;

        }

        notasMatriz.push(carro.notas);

    }

}
 
function calcularMediaNotas(carros) {

    for (let i = 0; i < carros.length; i++) {

        let somaNotas = 0;

        for (let j = 0; j < 5; j++) {

            somaNotas += carros[i].notas[j];

        }

        let media = somaNotas / 5;

        console.log("Média de notas do carro " + carros[i].marca + " " + carros[i].modelo + ": " + media.toFixed(2));

    }

}
 
function carroMenorNota(carros) {

    let mediaMenorNota = [];

    for (let i = 0; i < 5; i++) {

        let somaNotas = 0;

        for (let j = 0; j < carros.length; j++) {

            somaNotas += notasMatriz[j][i];

        }

        let media = somaNotas / carros.length;

        mediaMenorNota.push(media);

    }
 
    let menorMediaIndex = mediaMenorNota.indexOf(Math.min(...mediaMenorNota));

    console.log("A avaliação com menor média de notas foi a avaliação " + (menorMediaIndex + 1));

}
 
function menu() {

    console.log("Menu de opções:");

    console.log("1 - Cadastrar carros");

    console.log("2 - Calcular e mostrar a média de notas de cada carro");

    console.log("3 - Calcular e mostrar o modelo do carro com menor nota em cada avaliação");

    console.log("4 - Calcular e mostrar qual das cinco avaliações teve menor média");

    console.log("0 - Sair");

}
 
function main() {

    let opcao;

    do {

        menu();

        opcao = parseInt(prompt("Digite a opção desejada: "));

        switch (opcao) {

            case 1:

                cadastrarCarros();

                break;

            case 2:

                calcularMediaNotas();

                break;

            case 3:

                carroMenorNota();

                break;

            case 4:

                carroMenorNota();

                break;

            case 0:

                console.log("Programa encerrado");

                break;

            default:

                console.log("Opção inválida");

        }

    } while (opcao != 0);

}
 
main();