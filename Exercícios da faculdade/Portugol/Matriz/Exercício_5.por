programa
{
	/*
		5. Crie um algoritmo que leia um conjunto de números inteiros para 
		preencher uma matriz 10 x 10 e a partir daí, gere um vetor com os 
		maiores elementos de cada linha e outro vetor com os menores 
		elementos de cada coluna.
	*/
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[10][10], maior[10], menor[10], i, j

		i = 0
		j = 0
		 
		
		para(i=0; i<10; i++){
			para(j=0; j<10; j++){
				mat[i][j] = u.sorteia(0, 9)
			}
		}
		escreva("Matriz\n")
		para(i=0; i<10; i++){
			para(j=0; j<10; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}
		para(i=0; i<10; i++){
			para(j=0; j<10; j++){
				se(mat[i][j] > maior[i]){
					maior[i] = mat[i][j]
				}
				se(menor[j] == 0 ou mat[i][j] < menor[j]){
					menor[j] = mat[i][j]
				}			
			}
		}
		escreva("\nMaiores elementos de cada linha:\n")
		para(i=0; i<10; i++){
			escreva(i+1, "º Linha ",maior[i], "\n")
		}
		escreva("\nMenores elementos de cada coluna:\n")
		para(j=0; j<10; j++){
			escreva(j+1, "º Coluna ", menor[j], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */