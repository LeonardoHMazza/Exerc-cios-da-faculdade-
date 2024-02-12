programa
{
	
	funcao inicio()
	{
		inteiro a, b

		a = 7
		b = 15

		escreva(a,", ", b, "\n")
		troca(a, b)
		escreva("Números trocados: ",a,", ", b, "\n")
		escreva("Soma: ", soma(a, b))
	}

	funcao troca(inteiro &x, inteiro &y)
	{
		inteiro aux

		aux = x
		x = y
		y = aux
	}
	funcao inteiro soma(inteiro x, inteiro y)
	{
		inteiro result
		
		result = x + y
		retorne result
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */