algoritmo "reservaCinema"
var

   cinema: vetor[1..10,1..10] de caracter
   i,j, fila, poltrona:inteiro
   opcao,proc:caracter
inicio

   escreva("Deseja executar o programa?(s/n): ")
   leia(proc)
   limpatela

   enquanto (proc = "S") ou (proc = "s") faca

      para i de 1 ate 10 faca
         para j de 1 ate 10 faca
            cinema[i,j] <- "O"
         fimpara
      fimpara

      repita
      escreval()
      escreval("-Ingressos CineFlix-")
      escreval("------------------")
         escreval("1 - Reservar")
         escreval("2 - Layout do cinema")
         escreval("3 - Sair")
         escreval()
         escreva("Por favor, selecione uma opção: ")
         leia(opcao)
         limpatela

         escolha opcao
         caso "1"
            escreva("fila(1-10): ")
            leia(fila)
            limpatela
            escreva("Poltrona(1-10): ")
            leia(poltrona)
            limpatela

            se cinema[fila,poltrona] = "O" entao
               cinema[fila,poltrona] <- "X"
            senao
            escreval()
               escreva("Poltrona já ocupada!")
               escreval()
            fimse

         caso "2"
            para i de 1 ate 10 faca
               para j de 1 ate 10 faca
                  escreva(" ",cinema[i,j]," ")
               fimpara
               escreval("")
            fimpara
         fimescolha
      ate opcao = "3"
      escreva("Deseja executar novamente?(s/n): ")
      leia(proc)
      limpatela
   fimenquanto
   escreval("Obrigado por utilizar o CineFlix!")
fimalgoritmo