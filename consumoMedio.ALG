Algoritmo "consumoMedio"

Var
   distancia,gasto,consumoM:real

Inicio
   escreva("Informe a dist�ncia percorrida pelo ve�culo(km): ")
   leia(distancia)
   escreva("Informe o total de combust�vel gasto(L): ")
   leia(gasto)

   consumoM <- distancia/gasto

   escreval("Dist�ncia percorrida: ",distancia,"km")
   escreval("Gasto de combust�vel: ",gasto,"L")
   escreval("M�dia de consumo: ",consumoM:2:2,"km/L")

Fimalgoritmo