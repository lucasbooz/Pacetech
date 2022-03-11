Algoritmo "pesquisaCliente"

// Introdução a Programação
//
// Descrição   : Sistema para pesquisa de nomes em um vetor
// Autor(a)    : Lucas Rafael Booz
// Data atual  : 11/03/2022
Var

   vetorNomes: vetor[1..5] de caracter
   vetorIdades: vetor[1..5] de inteiro
   i,sucesso: inteiro
   pesquisa,proc: caracter
Inicio

   escreva("Deseja executar o programa?(s/n): ")
   leia(proc)

   enquanto (proc = "S") ou (proc = "s") faca
      limpatela

      para i de 1 ate 5 faca
         escreva("Informe o ",i,"º nome: ")
         leia(vetorNomes[i])
         limpatela
      fimpara
      limpatela

      escreva("Informe um nome a pesquisar: ")
      leia(pesquisa)
      sucesso <- 0

      para i de 1 ate 5 faca
         se vetorNomes[i] = pesquisa entao
            sucesso <- 1
         fimse
      fimpara

      se sucesso = 1 entao
         escreval("Cliente encontrado!")
      senao
         escreval("Cliente não encontrado!")
      fimse

      escreva("Deseja executar novamente?(s/n): ")
      leia(proc)
      limpatela
   fimenquanto
   escreval("Obrigado por utilizar nosso sistema!")
Fimalgoritmo