
public aspect Auditoria {
	pointcut metodosDeAuditoria() : call( * cajero.control.Comando.ejecutar(..));
	
	
	before(): metodosDeAuditoria(){
		System.out.println("Empezando Transacción");
		System.out.println("\t objeto     : " + thisJoinPoint.getTarget());
		System.out.println("\t método     : " + thisJoinPoint.getSignature());
		System.out.println("\t argumentos : " + thisJoinPoint.getArgs());
	}
	
	after(): metodosDeAuditoria() {

		System.out.println("Termino de hacer transaccion");
	}
	
}
