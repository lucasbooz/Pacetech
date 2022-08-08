algoritmo "conversorVetorTemperatura"

// Introdução a Programação
//
// Função : Realizar a conversão e ordenação de temperatura utilizando método bolha
// Autor : Lucas Rafael Booz
// Data : 09/03/2022
// Seção de Declarações
var

   opcaoMenu,proc :caracter
   temperatura, hora: vetor[1..4] de real
   i, j : inteiro
   temp, temp2 : real

procedimento mostraMenu()
inicio

   escreval("Conversor CF 1.0")
   escreval("----------------")
   escreval("1 - Celsius -> fahrenheit")
   escreval("2 - Fahrenheit -> celsius")
   escreval("3 - Ajuda")
   escreval("4 - Sair")
   escreva("Por favor, escolha uma das opções acima: ")
   leia(opcaoMenu)
   limpatela
fimprocedimento

procedimento telaAjuda()
inicio
   escreval("Fórmula de celsius para fahrenheit: F = (C x 1,8) + 32")
   escreval("Fórmula de fahrenheit para celsius: C = (F - 32) / 1.8")
fimprocedimento

procedimento armazenaVetor()
inicio

   para i de 1 ate 4 faca
      escreva("Informe a temperatura",i,": ")
      leia(temperatura[i])
      escreva("Informe a hora do registro: ")
      leia(hora[i])
      escreval("--------------------")
   fimpara
   limpatela
fimprocedimento

procedimento metodoBolha()
inicio

   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se (temperatura[j] > temperatura[i]) entao

            temp <- temperatura[i]
            temperatura[i] <- temperatura[j]
            temperatura[j] <- temp
            temp2 <- hora[i]
            hora[i] <- hora[j]
            hora[j] <- temp2

         fimse
      fimpara
   fimpara
fimprocedimento

procedimento conversorTemperatura()
inicio

   metodoBolha()

   se (opcaoMenu = "1") entao
      para i de 1 ate 4 faca
         escreval("Temperatura", temperatura[i], "°C, registrada às", hora[i], "h corresponde a ", ((temperatura[i]*1.8)+32):2:2,"°F.")
      fimpara
   senao
      para i de 1 ate 4 faca
         escreval("Temperatura", temperatura[i], "°F, registrada às", hora[i], "h corresponde a ", ((temperatura[i]-32)/1.8):2:2,"°C.")
      fimpara
   fimse
fimprocedimento
inicio

   escreva("Deseja executar o programa?(s/n): ")
   leia(proc)
   limpatela

   enquanto (proc = "S") ou (proc = "s") faca

      repita
         escreval()
         mostraMenu()

         escolha opcaoMenu
         caso "1"
            armazenaVetor()
            conversorTemperatura()

         caso "2"
            armazenaVetor()
            conversorTemperatura()

         caso "3"
            telaAjuda()

         caso "4"
            escreva("Deseja executar novamente?(s/n): ")
            leia(proc)
            limpatela

         outrocaso
            escreval()
            escreval("Opção inválida!")
         fimescolha

      ate opcaoMenu = "4"
   fimenquanto
fimalgoritmo
