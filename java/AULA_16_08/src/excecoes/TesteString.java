package excecoes;

public class TesteString {		
		public void caixaAlta() {
			String frase=null;
			String novaFrase=null;
			
			novaFrase= frase.toUpperCase();
			System.out.println("Frase original:" +frase);
			System.out.println("Frase em caixaa alta:" +novaFrase);
			
			
		}
		public void manin(String[]args) {
			TesteString ts=new TesteString();
			try {
				ts.caixaAlta();
			}catch (NullPointerException e) {
				System.out.println("Ocorreu um erri ao executar o metodo!");
				System.out.println(e.getMessage());
			}	
			
		}
}
