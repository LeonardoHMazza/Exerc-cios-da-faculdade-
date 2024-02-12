function principal() {
  let carros = [];
  let notas = [];
  let op;

  do {
    op = parseInt(
      prompt(`O que deseja realizar?\n
        1- Cadastrar 4 carros\n
        2- Média das notas dos carros\n
        3- Modelo de carro com menor nota em cada avaliação\n
        4- Menor média das 5 avaliações\n
        5- Sair`)
    );

    switch (op) {
      case 1:
        cadastrarCarros(carros, notas);
        break;

      case 2:
        calcularMediaNotas(carros);
        break;

      case 3:
        carroMenorNota(carros);
        break;

      case 4:
        break;

      case 5:
        alert("Programa encerrado");
        break;

      default:
        alert("Opção inválida");
    }
  } while (op != 4);
}

function cadastrarCarros(carros, notas) {
  for (let i = 0; i < 4; i++) {
    let carro = {
      marca: prompt(`Informe a marca do carro`),
      modelo: prompt(`Informe o modelo do carro`),
      ano: prompt(`Informe o ano do carro`),
      valor: prompt(`Informe o valor do carro`),
      nota: 0,
    };
    carros.push();

    for (let j = 0; j < 5; j++) {
      let nota = parseFloat(prompt(`Digite a nota do ${j + 1} carro: `));

      carro.nota[j] = nota;
    }
    notas.push(carro.nota);
  }
}

function calcularMediaNotas(carros) {
  for (let i = 0; i < carros.length; i++) {
    let somaNotas = 0;

    for (let j = 0; j < 5; j++) {
      somaNotas += carros[i].notas[j];
    }
    let media = somaNotas / 5;

    console.log(
      `Média de notas do carro da marca ${carros[i].marca} e modelo ${
        carros[i].modelo
      } é ${media.toFixed(2)}`
    );
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

  console.log(
    `A avaliação com menor média de notas foi a avaliação ${
      menorMediaIndex + 1
    })`
  );
}
