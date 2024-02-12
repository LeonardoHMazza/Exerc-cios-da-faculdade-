programa
{
	/*
		3. Fazer um algoritmo que leia números até que o usuário digite 0 (zero) e calcule:
		a. soma dos números entre 10 e 50;
		b. quantidade de números múltiplos de 3;
		c. maior valor.
	*/
	funcao inicio()
	{
   		inteiro numero, soma, cont, maiorvalor

    		soma = 0
   	 	cont = 0
   	 	maiorvalor=0
   	 	
	     escreva("Digite os números desejados e 0 para sair: ")
	     leia(numero)

	     enquanto (numero!=0) {
			escreva("Digite um número: ")
			leia(numero)
		
			se (numero >= 10 e numero <= 50){
		     	soma = soma + numero		     	
			}
		     se (numero % 3 == 0) {
		          cont = cont + 1		          
		     }
		     se (numero > maiorvalor){
		          maiorvalor = maiorvalor + numero		          		         
			}	
		}		
	    	escreva("A soma dos números entre 10 e 50 é: ", soma)
	    	escreva("\nA quantidade de números múltiplos de 3 é: ", cont)
	    	escreva("\nO maior valor digitado foi: ", maiorvalor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 297; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */