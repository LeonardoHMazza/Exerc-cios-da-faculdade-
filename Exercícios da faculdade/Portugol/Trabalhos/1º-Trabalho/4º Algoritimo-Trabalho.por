programa
{
	/*
		4. Faça um algoritmo que forneça todos os elementos da sequência de Fibonacci, menores que um 
		número N dado. Cada termo da sequência de Fibonacci é a soma dos dois antecessores, mas o 
		primeiro e o segundo sempre serão um. Ou seja, sequência: 1 1 2 3 5 8 13 21 34 ...
	*/
	funcao inicio()
	{
		inteiro n1, n2, n3, num
		
   		escreva("Digite um número para a sequência de Fibonacci anterior: ")
   		leia(num)
   
   		n1 = 0
   		n2 = 1
   
   		escreva("\nA sequência anterior do número ", num, " é: \n")

  		se(num == 0){
  			escreva("Não é possível fazer a sequência anterior")
  		}
  		senao{
   			faca{
      			escreva(n2, "\n")
      			n3 = n1 + n2
      			n1 = n2
      			n2=n3
   			}enquanto(n2 < num)
  		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 661; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */