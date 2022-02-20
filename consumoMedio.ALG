Algoritmo "consumoMedio"

Var
   distancia,gasto,consumoM:real

Inicio
   escreva("Informe a distância percorrida pelo veículo(km): ")
   leia(distancia)
   escreva("Informe o total de combustível gasto(L): ")
   leia(gasto)

   consumoM <- distancia/gasto

   escreval("Distância percorrida: ",distancia,"km")
   escreval("Gasto de combustível: ",gasto,"L")
   escreval("Média de consumo: ",consumoM:2:2,"km/L")

Fimalgoritmo