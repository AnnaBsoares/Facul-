package polimorfismo_aula;

public class contaPoupanca implements conta {

	private double saldo;

	@Override
	public void depositar(double valor) {
		this.saldo += valor;
		
	}

	@Override
	public void sacar(double valor) {
		this.saldo -=valor;
		
	}

	@Override
	public double getSaldo() {
	return saldo;
	}

}
