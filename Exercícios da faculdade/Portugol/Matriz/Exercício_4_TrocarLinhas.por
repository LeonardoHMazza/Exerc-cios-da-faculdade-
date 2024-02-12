programa
{
	/*
		4. Fazer um algoritmo que leia uma matriz 5x5 de inteiros e troque a 
		segunda e a quarta linha da matriz.
	*/
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[5][5], i, j, temp  

		i = 0
		j = 0
		temp = 0
		
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				mat[i][j] = u.sorteia(0, 1)
			}
		}
		escreva("Matriz\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}		
		escreva("\nLinha 2 e 4 trocadas\n")		
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				temp = mat[1][j]	
        			mat[1][j] = mat[3][j]
        			mat[3][j] = temp			
				escreva(mat[i][j], " ")
			}			
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */