package projetosemana7;

public class ProjetoSemana7 {

    public static void main(String[] args) {

        Empregado empregado1 = new Empregado("Lucas", "Rafael", 1500);
        System.out.println("Nome: " + empregado1.getPrimeiroNome() + " "
                + empregado1.getSobrenome());
        System.out.println("Salário mensal: R$ " 
                + String.format("%.2f",empregado1.getSalarioMensal()));
        System.out.println("Salário anual: R$ " 
                + String.format("%.2f",empregado1.salarioAnual()));
        
        System.out.println("");

        Empregado empregado2 = new Empregado("João", "Ricardo", 5000);
        System.out.println("Nome: " + empregado2.getPrimeiroNome() + " "
                + empregado2.getSobrenome());
        System.out.println("Salário mensal: R$ " 
                + String.format("%.2f",empregado2.getSalarioMensal()));
        System.out.println("Salário anual: R$ " 
                + String.format("%.2f",empregado2.salarioAnual()));
        
        System.out.println("----------");

        empregado1.aumentoSalario();
        empregado2.aumentoSalario();

        System.out.println("Nome: " + empregado1.getPrimeiroNome() + " "
                + empregado1.getSobrenome());
        System.out.println("Salário mensal(+10%): R$ " 
                + String.format("%.2f",empregado1.getSalarioMensal()));
        System.out.println("Salário anual(+10%): R$ " 
                + String.format("%.2f",empregado1.salarioAnual()));
        
        System.out.println("");

        System.out.println("Nome: " + empregado2.getPrimeiroNome() + " "
                + empregado2.getSobrenome());
        System.out.println("Salário mensal(+10%): R$ " 
                + String.format("%.2f",empregado2.getSalarioMensal()));
        System.out.println("Salário anual(+10%): R$ " 
                + String.format("%.2f",empregado2.salarioAnual()));

    }

}
