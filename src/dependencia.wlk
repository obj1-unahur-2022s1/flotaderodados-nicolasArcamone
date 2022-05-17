import rodados.*

class Dependencia {
	
	var rodados = []
	var pedidos = []
    var property cantEmpleados = 0
	
method rodadosEnDependencia(){return rodados}
method agregarRodado(rodado){ rodados.add(rodado)}
method quitarDeFlota(rodado){ rodados.remove(rodado)}
method pesoTotal(){return rodados.sum{p=>p.peso()}}
method cantidadDeRodados(){return rodados.size()}	
method velocidadDeTodos(velocidad){return rodados.all{r=>r.velocidadMaxima() >= velocidad}}	
method estaBienEquipada(){ return self.cantidadDeRodados() >= 3 and self.velocidadDeTodos(100)}	
method rodadosDeColor(unColor){return rodados.filter{r=>r.color() == unColor}}	
method capacidadTotalEnColor(color){return self.rodadosDeColor(color).sum{r=>r.capacidad()}}
method colorDelMasRapido(){return rodados.max{r=>r.velocidadMaxima()}.color()}	
method capacidadTotal(){return rodados.sum{r=>r.capacidad()}}
method capacidadFaltante(){return 0.max(cantEmpleados - self.capacidadTotal())}	
method esGrande(){return cantEmpleados >= 40 and self.cantidadDeRodados() >= 5}
method pesoTotalFlota(){return rodados.sum{r=>r.peso()}}
method agregarPedido(pedido){ pedidos.add(pedido)}


}
