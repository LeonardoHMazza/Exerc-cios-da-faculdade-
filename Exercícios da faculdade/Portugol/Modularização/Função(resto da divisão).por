programa
{
	/*
		Fazer um subprograma que calcule o quociente inteiro da divisão entre dois números, 
		sem utilizar o operador div.
	*/
	funcao inicio()
	{
		inteiro n1, n2

		n1 = 16
		n2 = 2

		escreva("O quociente da divisão é ", div(n1, n2))
	}
	funcao inteiro div(inteiro &x, inteiro &y)
	{
		inteiro result, cont

		cont = 0

		enquanto(x>=y){
			cont = cont + 1
			x = x - y
		}
		
		result = cont
		retorne result
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */