programa
{
	/*
		8. Crie um algoritmo que leia um vetor de 20 números inteiros e em 
		seguida divida estes números em outros 2 novos vetores, separando os 
		números pares dos números ímpares.
	*/
	funcao inicio()
	{
		inteiro vet1[20], vet2[20], vet3[20]
		inteiro i

		escreva("Entre com 20 números: \n")
		para(i=0; i<20; i++){
			leia(vet1[i])
		}
		para(i=0; i<20; i++){
			se(vet1[i] % 2 == 0){
				vet2[i] = vet1[i] 				
			}
			senao{
				vet3[i] = vet1[i] 				
			}			
		}
		escreva("\n\nOs números pares dessa sequência são:")
		para(i=0; i<20; i++){
			se(vet2[i]>0){
				escreva("\n", vet2[i])
			}
		}
		escreva("\n\nOs números ímpares dessa sequência são:")
		para(i=0; i<20; i++){
			se(vet3[i]>0){
				escreva("\n", vet3[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 159; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */