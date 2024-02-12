programa
{
	/*
		1. Construa um algoritmo que, dados os três lados de um 
		paralelepípedo, calcule o perímetro, a área, o volume e a 
		diagonal do paralelepípedo.
	*/
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real la, lb, lc, perimetro, area, volume, diagonal, r 

		escreva("Digite o valor do lado A: ")
		leia(la)
		escreva("\nDigite o valor do lado B: ")
		leia(lb)
		escreva("\nDigite o valor do lado C: ")
		leia(lc)

		se ( la==0 ou lb==0 ou lc==0){
			escreva("\nNão é possível realizar os calculos!!!")
		}
		senao{	
			area=(2*la*lb+2*lb*lc+2*la*lc)
		
			perimetro=(4*la+4*lb+4*lc)
	
			volume=(la*lb*lc)
	
			r= mat.potencia(la, 2)+mat.potencia(lb, 2)+mat.potencia(lc, 2)
	
			diagonal=mat.raiz(r, 2)
		
			escreva("Área = ",area)
			escreva("\nPerímetro = ", perimetro)
			escreva("\nVolume = ", volume)
			escreva("\nDiagonal = ", diagonal)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */