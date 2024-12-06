import java.util.Scanner;

public class ContaTerminal {
    Scanner sc = new Scanner(System.in);

    int numero;
    String agencia, nomeCliente;
    float saldo;

    public void lerDados() {
        System.out.printf("Digite o numero da conta: ");
        numero = sc.nextInt();
        System.out.printf("Digite o numero da Agencia: ");
        agencia = sc.next();
        System.out.printf("Digite o nome do Cliente: ");
        nomeCliente = sc.nextLine();
        System.out.printf("Digite o saldo inicial: ");
        saldo = sc.nextFloat();
    }

    public void imprimirDados() {
        System.out.printf("Ola %s, obrigado por criar uma conta em nosso banco, sua agencia e %s, conta %d e seu saldo %.2f ja esta disponivel para saque.%n",
                nomeCliente, agencia, numero, saldo);
    }

    public static void main(String[] args) {
        ContaBanco conta = new ContaBanco();
        conta.lerDados();
        conta.imprimirDados();
        conta.sc.close();
    }
}