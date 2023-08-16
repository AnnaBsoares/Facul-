package excecoes;

import java.util.InputMismatchException;
import java.util.Scanner;

public class exemplo4 {
	public static double calculaQuociente(double numerador, double denominador) {
		return numerador/denominador ;
		
	}
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		boolean continua =true;
		do {
			try {
				System.out.println("Numerador: ");
				double numerador =input.nextDouble();
				
				System.out.println("Denominador: ");
				double denominador =input.nextDouble();
				double resultado = calculaQuociente(numerador, denominador );
				continua=false;
			}catch (InputMismatchException e) {
			System.out.println("nao é possiel inserir letras,informeapenas numeros ");
			continua=true;
			}catch (ArithmeticException e) {
				System.out.println("tchau,obrigada");
			}
			
			
		}while(continua);
		System.out.println("fora do bloco try-cath");
				
		
	}
}
