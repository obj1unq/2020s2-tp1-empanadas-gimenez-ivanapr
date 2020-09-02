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
	var sueldo = 15000
	method sueldo(nuevoSueldo) {
		sueldo = nuevoSueldo
	}
	method sueldo() {
		return sueldo
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