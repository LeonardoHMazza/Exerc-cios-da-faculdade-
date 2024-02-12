programa
{
	/*
		1. Construa um algoritmo que verifique se o número de um CPF é válido. O número do CPF é 
		composto de 11 dígitos, sendo os dois últimos os dígitos de verificação, que têm por objetivo 
		verificar se o CPF é válido. A fórmula para verificar a validade do CPF é explicada a seguir:
		
		1º Dígito Verificador:
			Primeiro calcula-se a soma da multiplicação dos 9 primeiros dígitos por 10, 9, 8, ... , 3, 2, 
			respectivamente. 
			Em seguida obtém-se o resto da divisão deste número por 11 (Resto = Soma mod 11).
			Agora se analisa o Resto:
			Se Resto for igual a 1 ou a 0, então o 1º dígito verificador é 0.
			Caso contrário, o 1º dígito verificador é o resultado da subtração de Resto de 11, ou seja, 
			11-Resto.
			
		2º Dígito Verificador:
			Primeiro calcula-se a soma da multiplicação dos 9 primeiros dígitos por 11, 10, 9, ... , 4, 3, 
			respectivamente e do 1º dígito verificador por 2.
			O resto é semelhante ao que foi feito anteriormente (Resto = Soma mod 11)
			E a análise do Resto:
			Se Resto for igual a 1 ou a 0, então o 2º dígito verificador é 0.
			Caso contrário, o 2º dígito verificador é o resultado da subtração de Resto de 11.
	*/
	
	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia cpf
		caracter texto
		inteiro n[11], i, soma, resto, dig1, dig2, cont, a, b
		

		cont=0
		soma=0
		a=0
       	b=0
		
		escreva("Digite seu CPF: ")
		leia(cpf)
		
		para(i=0;i<11;i++)
		{
			texto=tx.obter_caracter(cpf, i)
			n[i]=tp.caracter_para_inteiro(texto)
		}
		
		//cálculo para o primeiro dígito
		para(i=0; i<9; i++){
            soma = soma + ((n[i])*(10 - i))
       	}
       	resto=soma%11
       	se(resto==1 ou resto==0)
       	{
       		 dig1=0
       	}
       	senao
       	{
       		 dig1=11-resto
       	}
       	soma=0
       	resto=0
       	
       	//cálculo para o segundo digito dígito
       	para(i=0; i<9; i++)
       	{
            soma = soma + ((n[i])*(11 - i))
       	}
       	
       	soma=soma+dig1*2
       	resto=soma%11
       	
       	
       	se(resto==1 ou resto==0)
       	{
       		 dig2=0
       	}
       	senao
       	{
       		 dig2=11-resto
       	}
       	
       	//Validação dos 2 últimos digitos
   		se(dig1==n[9])
   		{
   			cont=cont++
   		}
   		se(dig2==n[10])
   		{
   			cont=cont++
   		}
   		se(cont==2)
   		{
   			escreva("Esse CPF é válido!!!")
   		}
   		senao
   		{
   			escreva("Esse CPF não é válido!!!")
   		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1298; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */