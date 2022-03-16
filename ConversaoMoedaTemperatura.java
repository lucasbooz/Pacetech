package conversaomoedatemperatura;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Scanner;

public class ConversaoMoedaTemperatura {

    public static void main(String[] args) throws IOException {

        Scanner sc = new Scanner(System.in);

        float cotacao = 0.0f;
        float real = 0.0f;
        float dolar = 0.0f;
        float celsius = 0.0f;
        float fahrenheit = 0.0f;
        int opcao;

        System.out.print("Informe a cotação atual do dólar: ");
        cotacao = sc.nextFloat();

        do {
            System.out.println("");
            System.out.println("1 - Conversor de temperatura");
            System.out.println("2 - Conversor de moeda");
            System.out.println("3 - sair");
            System.out.print("Selecione uma das opções: ");
            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    System.out.println("------------------");
                    System.out.println("1 - Celsius - > Fahrenheit");
                    System.out.println("2 - Fahrenheit - > Celsius");
                    System.out.print("Selecione uma das opções: ");
                    opcao = sc.nextInt();
                    switch (opcao) {
                        case 1:
                            System.out.print("Informe a temperatura em celsius: ");
                            celsius = sc.nextFloat();
                            System.out.println("");
                            System.out.println("Temperatura em celsius: " + celsius + "ºC");
                            System.out.println("Temperatura em fahrenheit: " + formatador((celsius * 1.8) + 32) + "ºF");
                            break;
                        case 2:
                            System.out.print("Informe a temperatura em fahrenheit: ");
                            fahrenheit = sc.nextFloat();
                            System.out.println("");
                            System.out.println("Temperatura em fahrenheit: " + fahrenheit + "ºF");
                            System.out.println("Temperatura em celsius: " + formatador((fahrenheit - 32) / 1.8) + "ºC");
                            break;
                        default:
                            System.out.println("Opção inválida!");
                    }
                    break;

                case 2:
                    System.out.println("------------------");
                    System.out.println("1 - Real - > dólar");
                    System.out.println("2 - Dólar - > real");
                    System.out.print("Selecione uma das opções: ");
                    opcao = sc.nextInt();
                    switch (opcao) {
                        case 1:
                            System.out.print("Informe o valor em real: R$");
                            real = sc.nextFloat();
                            System.out.println("");
                            System.out.println("Valor informado: R$" + real);
                            System.out.println("Cotação atual: " + cotacao);
                            System.out.println("Valor em dólar: US$" + formatador(real / cotacao));
                            break;
                        case 2:
                            System.out.print("Informe o valor em dólar: US$");
                            dolar = sc.nextFloat();
                            System.out.println("");
                            System.out.println("Valor informado: US$" + dolar);
                            System.out.println("Cotação atual: " + cotacao);
                            System.out.println("Valor em real: R$" + formatador(dolar * cotacao));
                            break;
                        default:
                            System.out.println("Opção inválida!");
                    }
                    break;

                default:
                    System.out.println("Opção inválida!");
            }

        } while (opcao != 3);

    }

    public static String formatador(double valor) {
        return new DecimalFormat("#,##0.00").format(valor);
    }
}
