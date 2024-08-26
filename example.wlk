
object pepita {

	var energia = 100
	
	method comer(comida) { energia += comida.energia() }
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}
object pepon {
	var energia = 30

	method energia() {
		return energia
	}
  
	method comer(comida) {
		energia = energia + (comida.energia() / 2)
	}

	method volar(km) {
		energia = energia - 20 * km
	  
	}
}
object alpiste { method energia() { return 20 } }

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() { return madurez }
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energia() {
		return base * madurez
	}
	
}


object roque {
	var cenas = 0
	var ave = pepita
	
	method alimentar(comida) {
		ave.comer(comida)

		cenas += 1
	}

	method cenas() { return cenas }

	method entrenar(ave1) {
		cenas = 0
		ave = ave1
	 }
	
}