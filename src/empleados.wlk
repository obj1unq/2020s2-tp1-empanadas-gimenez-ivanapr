object gimenez {
	var fondo = 300000
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
	}
	method fondo(){
		return fondo
	}
}

object galvan {
	var deuda = 0
	var dinero = 0
	var sueldo = 15000
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
	method sueldo() {
		return sueldo
	}
	method gastar(cuanto) {
		if (dinero > cuanto)
		{
			dinero -= cuanto
		}
		deuda += cuanto
	}
	method deuda() {
		return deuda
	}
	method dinero() {
		return dinero
	}
}

object baigorria{
	var empanadasVendidas = 0
	var totalCobrado = 0
	method sueldo() {
		return 15 * empanadasVendidas
	}
	method vender(cantidad) {
		empanadasVendidas += cantidad
		totalCobrado = self.sueldo()
	}
	method totalCobrado() {
		return totalCobrado
	}
}