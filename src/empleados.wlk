object gimenez {
	var fondo = 300000
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
		empleado.recibeDinero(empleado.sueldo())
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
		if (dinero >= cuanto) {
			dinero -= cuanto
			deuda = 0
		} else {
			deuda += (cuanto - dinero)
			dinero = 0
		}
		
	}
	method deuda() {
		return deuda
	}
	method dinero() {
		return dinero
	}
	method recibeDinero(cantidad){
		if (cantidad >= deuda) {
			dinero += cantidad - deuda
			deuda = 0
		} else {
			deuda -= cantidad
		}		
	}
}

object baigorria{
	var empanadasVendidas = 0
	var totalCobrado = 0
	const montoEmpanada = 15
	method sueldo() {
		return montoEmpanada * empanadasVendidas
	}
	method vender(cantidad) {
		empanadasVendidas += cantidad
		totalCobrado = self.sueldo()
	}
	method totalCobrado() {
		return totalCobrado
	}
	method recibeDinero(n){ /* sin efecto */ }
}