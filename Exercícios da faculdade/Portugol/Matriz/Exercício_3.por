programa
{
	/*
		3. Crie um algoritmo que preencha uma matriz 3x4 de inteiros e escreva:
   		a) a soma dos números ímpares fornecidos;
   		b) a soma de cada uma das colunas;
   		c) a soma de cada uma das linhas.
	*/
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro mat[3][4], i, j, somai, somac[4], somal[3]

		i = 0
		j = 0
		somai = 0 
		
		para(i=0; i<3; i++){
			para(j=0; j<4; j++){
				mat[i][j] = u.sorteia(0, 100)
			}
		}
		escreva("Matriz\n")
		para(i=0; i<3; i++){
			para(j=0; j<4; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}
		para(i=0; i<3; i++){
			para(j=0; j<4; j++){
				se(mat[i][j] % 2 != 0){
					somai = somai + mat[i][j]
				}
				somac[j] = somac[j] + mat[i][j]
				somal[i] = somal[i] + mat[i][j]											
			}					
		}
		
		escreva("\nA soma dos ímpares é: ", somai)

		para(i=0; i<3; i++){
			escreva("\nA soma da ", i+1, "º linha é: ", somal[i])
		}
		para(j=0; j<4; j++){
			escreva("\nA soma da ", j+1,"º coluna é: ", somac[j])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */