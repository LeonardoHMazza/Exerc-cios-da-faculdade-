programa
{
	inclua biblioteca Util --> u
	/*
		2. Faça um algoritmo que leia, some e imprima o resultado da soma entre dois 
		vetores inteiros de 50 posições.
	*/
	funcao inicio()
	{
		inteiro vet1[50], vet2[50]
		inteiro i
		
		// Sorteia os 50 números do primeiro vetor utilizando a biblioteca útil
		para(i=0; i<50; i++){
			vet1[i] = u.sorteia(1, 10)
		}
		
		// Sorteia os 50 números do segundo vetor utilizando a biblioteca útil
		para(i=0; i<50; i++){
			vet2[i]= u.sorteia(1, 10)			
		}
		
		// Mostra o resultado da soma
		escreva("Soma: \n")
		para(i=0; i<50; i++){		
		escreva(vet1[i], " + ", vet2[i], " = ", vet1[i]+vet2[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */