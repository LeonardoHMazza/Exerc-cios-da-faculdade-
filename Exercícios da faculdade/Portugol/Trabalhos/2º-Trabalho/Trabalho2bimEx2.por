programa
{
	/*
		2. Fazer um algoritmo para corrigir provas de múltipla escolha de uma turma de 50 alunos. Cada 
		prova tem 10 questões, sendo que cada questão vale um ponto. Além da leitura dos dados dos 
		alunos (nome e respostas das questões), deve ser lido o gabarito para a correção da prova. O 
		algoritmo deverá calcular e imprimir a menor nota, a maior nota, a média da turma, a quantidade 
		de alunos com nota acima da média da turma, e a porcentagem de alunos aprovados, sabendo-se 
		que a nota mínima de aprovação é 6,0. Utilizar matriz para armazenar as respostas dos alunos.
	*/
	
     funcao inicio()
     {
         
		real soma, maior, menor, media, per_aprov, alu_aprov
		inteiro i, j 
		caracter  resposta[50][10], gabarito[10], nome
		real notas[50]
		inteiro  alunos_acima
		
		i = 0
		j = 0
		soma = 0.0
		maior = notas[1]
		menor= notas[1]
		alunos_acima = 0
		alu_aprov = 0.0
		
          escreva("Gabarito da Prova", "\n")
          para (i=0; i<10; i++) {
               escreva("Resposta correta da ", i + 1, "ª questão: ")
               leia(gabarito[i])
          }
          escreva("\n", "Nome e Respostas dos Alunos", "\n")
          para (i=0; i<50; i++){
               escreva("Nome do ", i + 1, "º aluno: ")
               leia(nome)
               para (j=0; j<10; j++) {
                    escreva("Digite a resposta da ", j + 1, "º questão: ")
                    leia(resposta[i][j])
                    se (resposta[i][j] == gabarito[j]) {
                         notas[i] = notas[i] + 1
                    }
               }
               escreva("\n")
          }
          para (i=0; i<50; i++) {
               soma = soma + notas[i]
          }
          media = soma / 50
          para (i=0; i<50; i++) {
               se (notas[i] > maior) {
                    maior = notas[i]
               }
               se (notas[i] < menor) {
                    menor = notas[i]
               }
               se (notas[i] > media) {
                    alunos_acima = alunos_acima + 1
               }
               se (notas[i] >= 6.0) {
                    alu_aprov = alu_aprov + 1
               }
          }
        	per_aprov = (alu_aprov / 50) * 100
          escreva("Menor nota: ", menor, "\n")
          escreva("Maior nota: ", maior, "\n")
          escreva("Media da turma: ", media, "\n")
          escreva("Quantidade de alunos acima da media: ", alunos_acima, "\n")
          escreva("Porcentagem de alunos aprovados: ", per_aprov, "\n")
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 626; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */