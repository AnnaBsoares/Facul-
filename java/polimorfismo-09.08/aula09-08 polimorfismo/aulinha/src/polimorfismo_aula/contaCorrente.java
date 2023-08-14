package polimorfismo_aula;

public class contaCorrente  implements conta{
	
	private double saldo;
	private double taxaOperacional=0.5;
	

	@Override
	public void depositar(double valor) {
		this.saldo += valor - (valor*taxaOperacional);
		
	}

	@Override
	public void sacar(double valor) {
		this.saldo -= valor - (valor*taxaOperacional);
		
	}

	@Override
	public double getSaldo() {
		return this.saldo;
	}

}
