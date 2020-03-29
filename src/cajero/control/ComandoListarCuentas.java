package cajero.control;

import cajero.modelo.Banco;
import cajero.modelo.Cuenta;

public class ComandoListarCuentas implements Comando{
	@Override
	public String getNombre() {
		return "Listar Cuentas";
	}

	@Override
	public void ejecutar(Banco contexto) throws Exception {

		System.out.println("Listado de Cuentas");
		System.out.println();

		for (Cuenta cuenta : contexto.getCuentas()) {
			System.out.println(cuenta.getNumero() + " : $ " + cuenta.getSaldo());
		}

	}
}
