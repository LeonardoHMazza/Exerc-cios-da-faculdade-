programa
{
	/*
		1. Fazer um algoritmo que leia uma matriz 5x5 e escreva 
		a sua diagonal principal.
	*/
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		
		inteiro mat[5][5], i, j

		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				mat[i][j] = u.sorteia(0, 100)
			}
		}
		escreva("\nMatriz\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}
		escreva("\nDiagonal principal\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				
			}
			escreva(mat[i][i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */