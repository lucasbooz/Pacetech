Algoritmo "conversorMoedaTemperatura"
// Introdu��o a Programa��o
//
// Descri��o   : Sistema de convers�o de temperatura e moeda
// Autor(a)    : Lucas Rafael Booz
// Data atual  : 02/03/2022

Var
   opcao, opcaoTemp,opcaoMoeda:caracter
   cotacao,celsius,fahrenheit,valorReal,valorDolar:real

Inicio
   escreva("Por favor, informe a atual cota��o do d�lar: R$")
   leia(cotacao)
   limpatela

   repita
      escreval("-------------------------------")
      escreval("Selecione uma das op��es abaixo!")
      escreval("1 - Conversor de temperatura")
      escreval("2 - Conversor de moeda")
      escreval("3 - Sair")
      leia(opcao)

      se(opcao = "1") entao
         limpatela
         escreval("Informe o tipo de convers�o!")
         escreval("1 - Celsius -> Fahrenheit")
         escreval("2 - Fahrenheit -> Celsius")
         leia(opcaoTemp)

         se(opcaoTemp = "1") entao
            limpatela
            escreva("Informe a temperatura em Celsius: ")
            leia(celsius)
            limpatela
            fahrenheit <- (celsius*1.8) + 32
            escreval("Temperatura em Celsius: ",celsius:2:2,"�C")
            escreval("Temperatura em Fahrenheit: ",fahrenheit:2:2,"�F")
         senao

            se(opcaoTemp = "2") entao
               limpatela
               escreva("Informe a temperatura em Fahrenheit: ")
               leia(fahrenheit)
               limpatela
               Celsius <- (fahrenheit-32) / 1.8
               escreval("Temperatura em Fahrenheit: ",fahrenheit:2:2,"�F")
               escreval("Temperatura em Celsius: ",celsius:2:2,"�C")
            fimse
         fimse
      senao

         se(opcao = "2") entao
            limpatela
            escreval("Informe o tipo de convers�o!")
            escreval("1 - Reais -> D�lar")
            escreval("2 - D�lar -> Reais")
            leia(opcaoMoeda)

            se(opcaoMoeda = "1") entao
               limpatela
               escreva("Informe o valor: R$")
               leia(valorReal)
               limpatela
               valorDolar <- (valorReal/cotacao)
               escreval("Valor em reais: R$",valorReal:2:2)
               escreval("Cota��o do d�lar: R$",cotacao:2:2)
               escreval("Valor em d�lares: US$",valorDolar:2:2)
            senao

               se(opcaoMoeda = "2") entao
                  limpatela
                  escreva("Informe o valor: US$")
                  leia(valorDolar)
                  limpatela
                  valorReal <- (valorDolar*cotacao)
                  escreval("Valor em d�lares: US$",valorDolar:2:2)
                  escreval("Cota��o do d�lar: R$",cotacao)
                  escreval("Valor em reais: R$",valorReal:2:2)
               fimse
            fimse
         fimse
      fimse
   ate(opcao = "3")
   limpatela

Fimalgoritmo