programa
{
	
	funcao inicio()
	{
		const inteiro tam = 4

		inteiro i
		real vet[tam], soma, media

		para(i=0; i<tam; i++){
			escreva("Digite o valor da ", i+1,"º nota")
			leia(vet[i])
		}

		soma = somavet(vet, tam)
		media = mediavet(vet, tam)
		escreva("Soma: ", soma)
		escreva("Média: ", media)
	}
	funcao real somavet(real vet[], inteiro tam)
	{
		inteiro i
		real soma

		soma = 0.0
		para(i=0; i<tam; i++){
			soma = soma + vet[i]
		}

		retorne soma
	}
	funcao real mediavet(real vet[], inteiro tam)
	{
		inteiro i
		real soma, media

		soma = 0.0
		para(i=0; i<tam; i++){
			soma = soma + vet[i]
		}

		media = soma/tam

		retorne media
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */