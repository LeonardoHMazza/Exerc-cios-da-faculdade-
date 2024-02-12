programa
{
	inclua biblioteca Util	
	/*
		7. Crie um algoritmo que permita a leitura de um vetor de 30 números 
		inteiros e gere um segundo vetor com os mesmos dados, só que de maneira 
		invertida, ou seja, o primeiro elemento do vetor original ficará na última 
		posição do novo vetor, o segundo na penúltima posição e assim por diante.
	*/
	funcao inicio()
	{
		inteiro vet1[30], vet2[30]
		inteiro i

		escreva("entre com 30 números: \n")
		para(i=0; i<30; i++){
			leia(vet1[i])
		}
		para(i=0; i<30; i++){	
			vet2[i] = vet1[29-i]
		}
		escreva("\nOs números digitados agora estão com suas posições invertidas:")
		para(i=0; i<30; i++){
			escreva("\n", vet2[i])
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */