import categorias.*

object bonoPorcentaje {
	
	method getBono(empleado) {
		return (empleado.categoria().getNeto() * 0.1)
	}
}

object bonoFijo {
	
	method getBono(empleado) {
		return 80
	}
}

object bonoDependeFaltas {
	
	method getBono(empleado) {
		const faltas = empleado.faltas()
		if (faltas == 0) {
			return 100
		}
		else if (faltas == 1) {
			return 50
		}
		else { 
			return 0
		}
	}
}

object bonoNulo {
	
	method getBono(empleado) {
		return 0
	}
}