programa
{
	inclua biblioteca Util --> u
	
	/*
		6. Crie um algoritmo que leia um vetor de 30 números inteiros e gere um 
		segundo vetor cujas posições pares são o dobro do vetor original e as 
		ímpares são o triplo.
	*/
	funcao inicio()
	{
		inteiro vet1[30], vet2[30]
		inteiro i

		escreva("Vetor original: \n")
		para(i=0; i<30; i++){
			vet1[i] = u.sorteia(1, 10)
			escreva("\n", "Posição ", i+1, ": ",vet1[i])
		}
		para(i=0; i<30; i++){
			se(i % 2 == 0){
				vet2[i] = vet1[i] * 2
			}
			senao{
				vet2[i] = vet1[i] * 3
			}
		}
		escreva("\n\nOs números digitados agora valem: \n")
		para(i=0; i<30; i++){
			escreva("\n", "Posição ", i+1, ": ",vet2[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */