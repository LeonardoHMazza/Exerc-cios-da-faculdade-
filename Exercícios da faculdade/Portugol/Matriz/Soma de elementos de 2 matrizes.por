programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat1[3][3], mat2[3][3], mat3[3][3], i, j

		escreva("Primeira matriz\n")
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				mat1[i][j] = u.sorteia(1, 10)
				escreva(mat1[i][j], " ")
			}
			escreva("\n")
		}
		escreva("\nSegunda matriz\n")
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				mat2[i][j] = u.sorteia(1, 10)
				escreva(mat2[i][j], " ")
			}
			escreva("\n")
		}
		escreva("\nA soma das matrizes\n")
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				mat3[i][j] = mat1[i][j] + mat2[i][j]
				escreva( mat3[i][j], " ")
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
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */