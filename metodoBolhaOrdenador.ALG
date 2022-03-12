algoritmo "metodoBolha"

var

   numeros: vetor[1..10] de inteiro
   i, j, temp:inteiro
   proc:caracter
inicio

   escreva("Deseja executar o programa?(s/n): ")
   leia(proc)

   enquanto (proc = "S") ou (proc = "s") faca

      para i de 1 ate 10 faca
         escreva("Informe o ",i,"º número: ")
         leia(numeros[i])
         limpatela
      fimpara

      para i de 1 ate 10 faca
         para j de 1 ate 10 faca
            se numeros[j] > numeros[i] entao
               temp <- numeros[i]
               numeros[i] <- numeros[j]
               numeros[j] <- temp
            fimse
         fimpara
      fimpara

      para i de 1 ate 10 faca
         escreval(numeros[i])
      fimpara

      escreva("Deseja executar novamente?(s/n): ")
      leia(proc)
      limpatela
   fimenquanto
   escreval("Obrigado por utilizar nosso sistema!")
fimalgoritmo