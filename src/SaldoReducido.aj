import cajero.modelo.Cuenta;

public aspect SaldoReducido {
	pointcut RetirarDinero() : call(* cajero.modelo.Cuenta.retirar(..));
	
	long valor = 0;
	
	before() throws Exception : RetirarDinero(){
		valor = (long) thisJoinPoint.getArgs()[0];
		Cuenta cuenta = (Cuenta) thisJoinPoint.getTarget();
		

		if (valor > (cuenta.getSaldo() - 20)) {
			throw new Exception("No se puede dejar una cuenta con menos de $20");
		}
	}
	
	
}
