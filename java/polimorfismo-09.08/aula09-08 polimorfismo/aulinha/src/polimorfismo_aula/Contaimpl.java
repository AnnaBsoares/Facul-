package polimorfismo_aula;

public abstract class Contaimpl {
	private double saldo;
	public double getSaldo() {
		return saldo;
	}
  public void setSaldo(double saldo) {
	  this.saldo =saldo;
    }
  
  
  public abstract void imprimirExtrato();
	  
  
}