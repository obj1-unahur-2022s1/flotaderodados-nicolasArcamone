class Pedidos {
	var property distancia 
	var property tiempoMaximo 
	var property cantPasajeros
	var property coloresIncompatibles = []
	
	
method velocidadRequerida(){return distancia / tiempoMaximo}
method puedeSatisfacer(unRodado){return unRodado.velocidadMax() >= self.velocidadRequerida() + 10 
	   								and unRodado.capacidad() >= cantPasajeros
	   								and not coloresIncompatibles.contains(unRodado.color())}
}
