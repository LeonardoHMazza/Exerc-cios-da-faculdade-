programa
{
	inclua biblioteca Util --> u
	
	/*
		5. Fazer um algoritmo que leia um vetor de 20 números inteiros e determine 
		qual o maior e o menor número do vetor e imprima os dois valores.
	*/
	funcao inicio()
	{
		inteiro vet[20]
		inteiro i, menor, maior

		// Sorteia os 20 números do vetor 
		para(i=0; i<20; i++){
			vet[i] = u.sorteia(1, 30)
		}
		
		maior=vet[0]
		menor=vet[0]
		para(i=0; i<20; i++){
			se (vet[i] > maior){
		          maior = vet[i]		          		         
			}
			se (vet[i] < menor){
		          menor = vet[i]		          		         
			}
		}
		escreva("O maior número é ", maior, " e o menor: ",menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 412; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */