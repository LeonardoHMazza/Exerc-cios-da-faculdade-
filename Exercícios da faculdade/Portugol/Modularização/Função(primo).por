programa
{
	/*
		Fazer um subprograma que identifique se um número é ou não primo.
	*/
	funcao inicio()
	{
		inteiro n, primo

		escreva("Digite um número: ")
		leia(n)
		primo = nprimo(n)
		
		se(primo == 1){
			escreva("O número ", n," é primo")
		}
		senao{
			escreva("O número ", n," não é primo")
		}
	}
	funcao inteiro nprimo(inteiro &x)
	{
		inteiro i, cont

		cont = 0
		
		para(i=1; i<=x; i++){
			se(x % i == 0){
				cont = cont +1
			}
		}
		se(cont == 2){
			retorne 1
		}
		senao{
			retorne 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 17; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */