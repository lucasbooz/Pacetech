Algoritmo "mediaNotas"

Var
n1,n2,n3,media:real


Inicio

   escreva("Informe a nota 1: ")
   leia(n1)
   escreva("Informe a nota 2: ")
   leia(n2)
   escreva("Informe a nota 3: ")
   leia(n3)

   media <- (n1+n2+n3)/3

   escreval("A sua m�dia �: ",media:2:2)

   se (media < 6) entao
      escreval("Situa��o: REPROVADO")
   senao
      se (media > 7) entao
         escreval("Situa��o: APROVADO")
      senao
         escreval("Situa��o: EM EXAME")
      fimse
   fimse

Fimalgoritmo