package excecoes;

public class exemplo3 {
	public static void main(String[] args) {
		try {
		int[] numeros= {1,2,3,4,5};
		for (int i=0; i<numeros.length; i++) {
			System.out.println("NUMERO:"+ numeros [i]);
			
		}
		} catch (Exception e) {
			System.out.println("Algo deu errado!");
			System.out.println(e.getMessage());
		
		}finally {
			System.out.println("os comandos try-catch foram finalizados ");
			
		}
		
	}

}
