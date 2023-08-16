package excecoes;

public class exemplo1 {
	public static void main (String[] args) {
		int a, b, result;
		try {
			a=42;
			b=0;
			result=a/b;
			System.out.println("RESULTADO: "   + result);
		}catch (ArithmeticException e) {
			System.out.println("Divisão por zero!" + e.getMessage()); //excecao divisao por 0
			
		}
		System.out.println("fora do catch");
	}
	
}
