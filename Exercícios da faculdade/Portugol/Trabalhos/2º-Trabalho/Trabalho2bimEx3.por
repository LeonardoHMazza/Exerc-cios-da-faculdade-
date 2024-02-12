programa
{
	/*
		3. Usando o comando ‘escolha’, fazer um menu contendo opções para executar diferentes 
		subprogramas, sendo a última opção para sair do programa. Ao executar a opção selecionada, 
		oferecer as opções novamente. As opções (subprogramas) são as seguintes:
		
		a) Escrever a tabuada de um número ou uma mensagem de erro caso o número não esteja entre 
		1 e 9. O número deve ser passado como parâmetro e a validação feita no subprograma.

		b) Encontra o maior elemento entre dois números. Os números devem ser passados como 
		parâmetro e retornar o maior valor.
		
		c) Calcular o Índice de Massa Corporal (IMC): a fórmula é IMC = peso / altura2.
		
		d) Dados um capital inicial e um período em meses, e considerando uma taxa de juros mensal de 
		10%, imprimir o montante ao final de cada mês.
		
		e) Calcular o fatorial de um número.
		
		f) Calcular o seguinte somatório: S = 1 + 1/1! + 1/2! + 1/3! + ... + 1/N!, sendo N fornecido pelo 
		usuário. Chamar o subprograma do item anterior.
	*/
	
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		inteiro op, n1, n2, i, meses
		real peso, altura, capital
		
		escreva("Escolha uma das opções abaixo (1 a 7)")
		escreva("\n", "1- Para a tabuada de um número ")
		escreva("\n", "2- Maior elemento entre dois números ")
		escreva("\n", "3- Calcular o IMC ")
		escreva("\n", "4- Calcular seus juros por um período de meses ")
		escreva("\n", "5- Calcular fatorial de um número ")
		escreva("\n", "6- Calcular a somatória:S= 1 + 1/1! + 1/2! + 1/3! +... +1/N! ")
		escreva("\n", "7- Sair do programa")
		escreva("\n\n","Digite a opção escolhida: ")
		leia(op)
		

		escolha(op){
			caso 1:
				limpa()
				escreva("1- Tabuada \n\n")
				escreva("Digite qual tabuada você quer: ")
				leia(n1)
				ftabuada(n1)
				aguarde()
	
			caso 2: 
				limpa()
				escreva("2- Maior elemento \n\n")
				escreva("Coloque dois valores para calcularmos o maior número","\n\n")
				
				escreva("Digite o primeiro número: ")
				leia(n1)
				
				escreva("\n","Digite o segundo número: ")
				leia(n2)
				escreva("\n")
				fmaior(n1, n2)
				aguarde()
				
			 caso 3: 
				limpa()

				escreva("3- Calcular IMC \n\n")
				escreva("Digite seu peso: ")
				leia(peso)

				escreva("Digite sua altura: ")
				leia(altura)
				escreva("\n")
				fimc(peso, altura)
				aguarde()
			 	
			 caso 4: 
				limpa()
				
				escreva("4- Calcular juros de 10% por mês \n\n")
				escreva("Digite seu capital inicial: ")
				leia (capital)
				escreva("Digite a quantidade de meses: ")
				leia (meses)
				escreva("\n")
				fcapital(capital, meses)
				aguarde()
			 	
			 caso 5: 
				limpa()

				escreva("5- Fatorial \n\n")
				escreva("Insira um número a ser fatorado: ")
          		leia(n1)
				escreva("\n")
				escreva("O fatorial de ", n1, " é: ", ffatorial(n1), "\n")
				aguarde()

			caso 6: 
				limpa()

				escreva("6- Somatoria \n\n")
				escreva("Escolha o valor de N para a sequinte somatória: S= 1 + 1/1! + 1/2! + 1/3! +... +1/N!","\n")
      			leia (n1)

      			escreva("A somatória foi = ",fsomatoria(n1),"\n")

      			aguarde()
     
      		caso 7:
      			limpa()
      			escreva("Volte sempre!!!\n")
			pare
			
      		caso contrario:
      				limpa()
      				escreva("Opção inválida!!!\n")
      				escreva("Digite um número de 1 a 7\n")
      				aguarde()
		}
	}
	funcao aguarde()
	{
		inteiro i
		
		escreva("\n","Aguarde 5 segundos")
		u.aguarde(5000)
		para(i=2; i>=0; i--){
			limpa()
			escreva("Voltando para o menu em ", i+1," s")
			u.aguarde(1000)
		}
		limpa()
	 	inicio()	
	}
	funcao ftabuada(inteiro x)
	{
		inteiro i
		
		se( x < 1 ou x > 9){
			escreva("\nErro!! Digite um número entre 1 e 9\n")
		}
		senao{
			para(i=1; i <= 10; i++){
				escreva(x, " x ", i, " = ", x * i, "\n")			
			}
		}
	}
	funcao fmaior (inteiro x, inteiro y)
	{
		inteiro maior, i
		
		maior=0
		
		se(x > y)
		{
			maior = x
			escreva("O maior número é: ", maior, "\n")
		}
	 	se(y > x){
			maior = y
			escreva("O maior número é: ", maior, "\n")
		}
		
		se(x == y){
			escreva("Os dois números tem o mesmo valor.\n")
		}
	}
	funcao fimc (real x, real y)
	{
		real imc
		inteiro i

		imc = x / mat.potencia(y, 2.0)

		escreva("Seu índide de massa corporal é: ", mat.arredondar(imc, 2), "\n")
	}
	funcao fcapital(real x, inteiro y)
	{
		inteiro i 
		real capital, soma, juros, final

		juros = 0.0

		para(i=0; i<y; i++){

			juros = x * 0.1
			x = x + juros
			final = x
			escreva("No ", i+1,"º mês você terá: R$ ", mat.arredondar(final, 2), "\n")
		}
	}	
	funcao inteiro ffatorial(inteiro x)
     {
          inteiro i, resultado
          
          resultado = 1
          
          para (i = 1; i <= x; i++) {
               resultado = resultado * i
          }
		retorne resultado 
     }
	funcao real fsomatoria(inteiro x)
	{
		inteiro i
		real soma

		soma = 0.0
		
      	para(i=0; i<=x; i++){
      		soma = soma + (1.0 / ffatorial(i))
      	}
      	soma = mat.arredondar(soma, 2)
      	retorne soma
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 859; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */