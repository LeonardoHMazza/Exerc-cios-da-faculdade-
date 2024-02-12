programa
{
	/*
		4. Faça um algoritmo que preencha um vetor de 30 elementos inteiros com a 
		sequência de Fibonacci (primeiro elemento é 1, segundo é 1 e em seguida, 
		cada termo subsequente é a soma dos dois anteriores).
	*/
	funcao inicio()
	{
		inteiro vet[30]
		inteiro i

		vet[0] = 1
		vet[1] = 1

		escreva("sequência de Fibonacci:\n\n")
		
		para(i=2; i<30; i++){
			vet[i] = vet[i-1]+vet[i-2]
		}
		para(i=0; i<30; i++){
			escreva(vet[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */