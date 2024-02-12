programa
{
	/*
		Fazer um subprograma que calcule o fatorial de um número.
	*/
	funcao inicio()
	{
		inteiro x, y

		x=8
		y=1
		escreva("O fatorial de ",x," é ", fat(x, y))
	}
	funcao inteiro fat(inteiro &x, inteiro &y)
	{
		inteiro fatorial, cont

		fatorial = 1
		
		enquanto (y <= x)
		{
			fatorial = fatorial * y 
			y = y + 1
		}
		retorne fatorial
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 120; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */