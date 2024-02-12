programa
{
	/*
		2. Fazer um algoritmo que leia os comprimentos dos três lados de um 
		triângulo e determine o tipo do triângulo, com base nos seguintes casos 
		(os valores podem ser fornecidos em qualquer ordem pelo usuário). 
		Seja A o maior dos lados, e B e C os outros dois. Então:
		
		Se A >= B + C Nenhum triângulo é formado
		Se A^2 = B^2 + C^2 Um triângulo retângulo é formado
		Se A^2 > B^2 + C^2 Um triângulo obtusângulo é formado
		Se A^2 < B^2 + C^2 Um triângulo acutângulo é formado
	*/
	inclua biblioteca Matematica--> mat
	
	funcao inicio()
	{
		real A, B, C

		escreva("Digite três valores: \n")
		leia(A, B, C)

		
		se (A>= B+C ou B>= A+C ou C >= A+B){
			escreva("Nenhum triângulo é formado!!!")
		}
		senao {
			A =	mat.potencia(A, 2)
			B =  mat.potencia(B, 2)
			C =  mat.potencia(C, 2)

			se(A==B+C ou B==A+C ou C==A+B){
				escreva("Um triângulo retângulo é formado.")
			}
			senao se(A>B+C ou B>A+C ou C>B+A){
				escreva("Um triângulo obtusângulo é formado. ")				
			}
			senao se(A<B+C ou B<A+C ou C<B+A){
				escreva("Um triângulo acutângulo é formado. ")				
			}										
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 559; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */