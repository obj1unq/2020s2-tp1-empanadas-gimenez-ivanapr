object gimenez {
	var fondo = 300000
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
		empleado.cobra()
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
	method cobra() {
		dinero += sueldo
		dinero = 0.max((dinero - deuda).abs())
		deuda = (0.min(deuda-dinero)).abs()
	}
	method gastar(cuanto) {
		deuda += (0.min(dinero-cuanto)).abs()
		dinero = 0.max(dinero-cuanto)
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
	const montoEmpanada = 15
	method sueldo() {
		return montoEmpanada * empanadasVendidas
	}
	method vender(cantidad) {
		empanadasVendidas += cantidad
	}
	method totalCobrado() {
		return totalCobrado
	}
	method cobra(){
		totalCobrado = self.sueldo()
	}
}