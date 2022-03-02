Algoritmo "triangulo"

Var
   lado1,lado2,lado3:real

Inicio
   escreva("Digite o lado 1: ")
   leia(lado1)
   escreva("Digite o lado 2: ")
   leia(lado2)
   escreva("Digite o lado 3: ")
   leia(lado3)

   se (lado1 > lado2+lado3) ou (lado2 > lado1+lado3) ou (lado3 > lado1+lado2) entao
      escreva("Não é triângulo!")
   senao
      se (lado1 = lado2) e (lado2 = lado3) entao
         escreva("Triângulo Equilátero")
      senao
         se (lado1 = lado2) ou (lado2 = lado3) ou (lado1 = lado3) entao
            escreva("Triângulo Isósceles")
         senao
            escreva("Triângulo Escaleno")
         fimse
      fimse
   fimse

Fimalgoritmo