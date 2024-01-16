object homero {

	var cantidadDonuts=0
	
	method comprarDonuts(){
		cantidadDonuts += 12
	}
	
	method comerDonuts(){
		cantidadDonuts -= 1
	}	
	
	method cantidadDonuts(){
		return cantidadDonuts	
	}
	
	method estaDistraido() = cantidadDonuts < 2
	
	
}

object encargado{
	var nombre
	
	
	method estaDistraido(){
		
	}
	
}

object plantaNuclear {
	var barras = 0
	
	
	method cantidadBarras(){
		return barras
	}
	method recibirBarras(){
		barras = barras + 1000
	}
	method estaEnPeligro()= barras > 10000 and encargado.estaDistrido()
}

