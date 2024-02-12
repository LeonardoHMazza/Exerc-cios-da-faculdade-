programa
{
	/* 
	16. Construa um algoritmo que seja capaz de concluir qual dentre os seguintes animais foi escolhido, 
	  através de perguntas e respostas. 
	  Animais possíveis: Leão, cavalo, homem, macaco, morcego,baleia, avestruz, pinguim, pato, águia, tartaruga, 
	  crocodilo e cobra.

	Exemplo: 
	É mamífero? Sim.
	É quadrúpede? Sim.
	É carnívoro? Não.
	É herbívoro? Sim.
	Então o animal escolhido foi o cavalo. 
	*/

	funcao inicio()
	{
		inteiro animal

		escreva("Escolha um destes animais: Leão, Cavalo, Homem, Macaco, Morcego, Baleia,\nAvestruz, Pinguim, Pato, Águia, Tartaruga, Crocodilo ou Cobra \n")
		escreva("\nAgora responda:\n")
		escreva("\nEle é um mamífero, uma ave ou um réptil? \n Digite: \n 1 para mamífero \n 2 para ave \n 3 para réptil\n", "\n")
		leia(animal)

		escolha (animal){
			caso 1:
			escreva("\nEle é quadrúpede, bípede, voador ou aquático? \n Digite: \n 1 - para Quadrúpede \n 2 - para Bípede \n 3 - para Voador \n 4 - para Aquático\n", "\n")
			leia(animal)
			escolha(animal){
				
				caso 1:
				escreva("\nEle é carnívoro ou herbívoro? \n Digite: \n 1 - para Carnívoro \n 2 - para Herbívoro\n", "\n")
				leia(animal)

				escolha(animal){
					
					caso 1:
					escreva("\nO animal escolhido foi o Leão")
					pare
					
					caso 2:
					escreva("\nO animal escolhido foi o Cavalo")
					pare

					caso contrario:
					escreva("\nOpção inválida!!\n")
				}
				pare
				
				caso 2:
				escreva("\nEle é onívoro ou frutívoro? \n Digite: \n 1 - para Onívoro \n 2 - para Frutívoro\n", "\n")
				leia(animal)

				escolha (animal){
					caso 1:
					escreva("\nO animal escolhido foi o Homem")
					pare

					caso 2:
					escreva("\nO animal escolhido foi o Macaco")
					pare

					caso contrario:
					escreva("\nOpção inválida!!\n")
					
				}
				pare
				
				caso 3:
				escreva("\nO animal escolhido foi o Morcego")
				pare
		
				caso 4:
				escreva("\nO animal escolhido foi a Baleia")
				pare
				
				caso contrario:
				escreva("\nOpção inválida!!\n")
			}
			pare
			caso 2:
			escreva("\nEle é um não voador, nadador ou é de rapina? \n Digite: \n 1 - para Não Voador \n 2 - para Nadador \n 3 - para De Rapina\n", "\n")
			leia(animal)
			
			escolha(animal){
				caso 1:
				escreva("\nEle é tropical ou polar? \n Digite: \n 1 - para Tropical \n 2 - para Polar\n", "\n")
				leia(animal)
				escolha(animal){
					caso 1:
					escreva("\nO animal escolhido foi o Avestruz")
					pare

					caso 2:
					escreva("\nO animal escolhido foi o Pinguim")
					pare

					caso contrario:
					escreva("\nOpção inválida!!\n")
				}
				pare
				caso 2:
				escreva("\nO animal escolhido foi o Pato")
				pare
				
				caso 3:
				escreva("\nO animal escolhido foi a Águia")
				pare
				
				caso contrario:
				escreva("\nOpção inválida!!\n")
			}
			pare
			
			caso 3:
			escreva("\nEle tem casco, é carnívoro ou não tem patas? \n Digite: \n 1 - para Com Casco \n 2 - para Carnívoro \n 3 - para Sem patas\n", "\n")
			leia(animal)
			
			escolha(animal){
				caso 1:
				escreva("\nO animal escolhido foi a Tartaruga")
				pare
				caso 2:
				escreva("\nO animal escolhido foi o Crocodilo")
				pare
				caso 3:
				escreva("\nO animal escolhido foi a Cobra")
				pare
				
				caso contrario:
				escreva("\nOpção inválida!!\n")
			}
			pare
			
			caso contrario:
			escreva("\nOpção inválida!!\n")
		}			
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */