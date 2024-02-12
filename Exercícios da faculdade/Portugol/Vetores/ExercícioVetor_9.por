programa
{
	/*
		9. Crie um algoritmo que leia uma série de 50 notas e calcule quantas 
		são 10% acima da média e quantas são 10% abaixo da média.
	*/
	funcao inicio()
	{
		real vet[50]
		inteiro i, NotaAcima, NotaAbaixo
		real soma, media

		soma = 0
		NotaAcima = 0
		NotaAbaixo = 0

		para(i=0; i<50; i++){
			escreva("Entre com a ", i+1, "º nota: ")
			leia(vet[i])
			soma = soma + vet[i]
		}
		media = soma/50
		
		para(i=0; i<50; i++){
			se(vet[i] > 1.1 * media){
				NotaAcima = NotaAcima + 1
			}
			senao{
				NotaAbaixo = NotaAbaixo + 1
			}
		}
		escreva("\nA média foi: ",media)
		escreva("\nNotas acima de 10%: ", NotaAcima)
		escreva("\nNotas abaixo de 10%:", NotaAbaixo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 394; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */