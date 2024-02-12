programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[3][3], i, j, soma

		soma = 0

		escreva("Matriz\n")
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){	
				mat[i][j] = u.sorteia(1, 10)
				escreva(mat[i][j], " ")
				soma = soma + mat[i][j]
			}
			escreva("\n")
		}
		escreva("\nA soma dos elementos foi: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 127; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */