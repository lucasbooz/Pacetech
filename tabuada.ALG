Algoritmo "tabuada"
Var
   n,i: inteiro
   proc: caracter

Inicio
   escreval("Deseja executar o programa?(s/n)")
   leia(proc)
   enquanto (proc = "S") ou (proc = "s") faca

      limpatela
      escreva("Informe uma tabuada: ")
      leia(n)
      escreval("--------------------")

      para i de 0 ate 10 faca
         escreval(n, " x ", i, " = ",n*i)
      fimpara
      escreval("")
      escreva("Deseja executar novamente?(s/n)")
      leia(proc)
      limpatela
   fimenquanto

Fimalgoritmo