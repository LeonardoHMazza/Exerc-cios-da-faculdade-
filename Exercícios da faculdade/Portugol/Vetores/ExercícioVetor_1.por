programa
{
	/*
		1. Faça um algoritmo que leia um vetor de inteiros de 10 posições e em seguida 
		imprima este vetor como se cada número fosse multiplicado por 3.
	*/
	funcao inicio()
	{
		inteiro vet[10]
		inteiro i

		para(i=0; i<10; i++){
			escreva("Entre com o ", i+1,"º número: \n")
			leia(vet[i])
		}
		escreva("\n")
		para(i=0; i<10; i++){
			escreva(vet[i] * 3, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */