class Corsa{
	var property color

method capacidad()=4
method velocidadMax()=150
method peso()=1300
}


class Kwid{
	var property tanqueAdicional = false
	
    
method capacidad(){return  if(tanqueAdicional) 3 else 4}
method velocidadMax(){return  if(tanqueAdicional) 120 else 110}
method peso(){return 1200 + if(tanqueAdicional) {150} else {0}}
method color(){return "Azul"}
}

object trafic{
	var property interior = comodo
	var property motor = pulenta
	
	
method capacidad() = interior.capacidad()
method velocidadMaxima() = motor.velocidadMaxima()
method peso(){return 4000 + interior.peso() + motor.peso() }
method color() = "Blanco"
}

object comodo{
	
method capacidad() = 5	
method peso() = 700
	
}

object popular{
	
method capacidad() = 12	
method peso() = 1000
}

object pulenta{

method velocidadMaxima() = 130
method peso()= 800
}

object bataton{
	
method velocidadMaxima() = 80
method peso()= 500
}


class AutoEspecial{
	var property capacidad = 4
	var property velocidadMaxima = 200
	var property color = "Blanco"
	var property peso = 200
}
