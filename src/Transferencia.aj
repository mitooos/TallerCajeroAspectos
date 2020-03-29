import java.util.ArrayList;
import java.util.List;

import cajero.control.Comando;
import cajero.control.ComandoConsignar;
import cajero.control.ComandoListarCuentas;
import cajero.control.ComandoRetirar;
import cajero.control.ComandoTransferir;

public aspect Transferencia {
	pointcut cargarComandos() : call(* cajero.Cajero.cargaComandos(..));

	List<Comando> around() : cargarComandos(){
		// crea los comandos que se van a usar en la aplicación

		List<Comando> comandos = new ArrayList<>();

		comandos.add(new ComandoListarCuentas());
		comandos.add(new ComandoRetirar());
		comandos.add(new ComandoConsignar());
		comandos.add(new ComandoTransferir());

		System.out.println("Transferencia Agregada");

		return comandos;
	}
}
