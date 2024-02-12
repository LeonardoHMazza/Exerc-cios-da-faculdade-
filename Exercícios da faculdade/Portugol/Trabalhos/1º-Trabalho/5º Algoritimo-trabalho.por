programa
{
	/*
		5. Nas férias os motoristas possuem uma técnica para determinar o custo e rendimento de seu 
		automóvel em relação ao consumo de combustível. O processo inicia-se com o enchimento do 
		tanque até seu limite máximo. Antes de iniciar-se a viagem, o motorista anota a quilometragem 
		apresentada no painel do carro. Terminada a viagem, o motorista completa novamente o tanque e 
		anota a quilometragem registrada no painel. Construa um algoritmo que receba como dados de 
		entrada o nome do motorista, a leitura da quilometragem antes e depois da viagem, o volume de 
		combustível consumido (em litros) e o preço do litro do combustível (R$/l) de 10 motoristas, e 
		determine o gasto total com combustível, o rendimento do automóvel (km/l) e o preço pago por 
		quilômetro rodado para cada um deles.
	*/
	funcao inicio()
	{
		cadeia nome
		real kmantes, kmdepois, combustivel, totalL, rendimento, precokm, precoL, difkm
		inteiro cont
		
		cont = 0
		totalL = 0
		rendimento = 0
		precokm = 0
		precoL = 0
		difkm = 0

		escreva("Entre com os dados dos caminhoneiros\n")
		
		enquanto (cont < 10){
			escreva("Digite o nome do ", cont + 1, "º caminhoneiro: ")
			leia(nome)
			escreva("Digite a quilometragem de antes: ")
			leia(kmantes)
			escreva("Digite a quilometragem de agora: ")
			leia(kmdepois)
			escreva("Digite o combustível consumido: ")
			leia(combustivel)
			escreva("Digite o preço por litro do combustivel: ")
			leia(precoL)
			
			totalL = totalL + combustivel
			difkm = kmdepois - kmantes
			rendimento = difkm*totalL
			precokm = difkm*precoL
			cont = cont + 1
		}		
		escreva("\nO gasto total com combustível foi: ", totalL, " L\n")
		escreva("O rendimento do automóvel: ", rendimento, " km/L\n")
		escreva("O preço pago por quilometro rodado para cada foi: R$ ", precokm, "/L\n")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 841; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */