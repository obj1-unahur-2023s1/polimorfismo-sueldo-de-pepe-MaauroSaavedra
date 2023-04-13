import categorias.*
import bonos.*

object pepe {
	var categoria
	var faltas
	var bonoResultado
	var bonoPresentismo
	
	method setCategoria(nuevo) {
		categoria = nuevo
	}
	
	method categoria(){
		return categoria
	}
	
	method setFaltas(n) {
		faltas = n
	}
	
	method faltas() {
		return faltas
	}
	
	method setBonoResultado(bono) {
		bonoResultado = bono
	}
	
	method bonoResultado() {
		return bonoResultado
	}
	
	method setBonoPresentismo(bono) {
		bonoPresentismo = bono
	}
	
	method sueldoNeto() {
		return categoria.getNeto()
	}
	
	method	sueldo() {
		return self.categoria().getNeto() + bonoPresentismo.getBono(self) + bonoResultado.getBono(self)
	}
}
