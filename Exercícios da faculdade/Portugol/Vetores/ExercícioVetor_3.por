programa
{
	/*
		3. Faça um algoritmo que preencha um vetor de 100 elementos inteiros, 
		colocando 1 na posição correspondente a um índice par e colocando 0 na 
		posição correspondente à índice ímpar.
	*/
	funcao inicio()
	{
		inteiro vet[100]
		inteiro i

		para(i=0; i<100; i++){
			se(i % 2 == 0){
				vet[i] = 1
			}
			senao{
				vet[i] = 0
			}
		}
		para(i=0; i<100; i++){
			escreva(vet[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */