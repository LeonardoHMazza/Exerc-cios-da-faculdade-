programa
{
	/*
		Fazer um subprograma que identifique se um número é ou não divisível por 6.
	*/
	funcao inicio()
	{
		inteiro n, y
		cadeia msg

		escreva("Digite um número: ")
		leia(n)
		msg = div(n)
		
		escreva(msg)
	}
	funcao cadeia div(inteiro &x)
	{
		cadeia msg

		msg = ""
		se(x % 6 == 0){
			msg = "Este número é divisivel por 6"
		}
		senao{
			msg = "Este número não é divisivel por 6"
		}
		retorne msg
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */