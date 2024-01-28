class Personaje {
	var property fuerza
	var property inteligencia
	var property rol
	
	method potencialOfensivo(){
		return self.fuerza() * 10 + rol.potencialExtra() 
	}	
	method esInteligente(){
		return self.inteligencia() > 50	
	}
	
	method esGrosoEnSuRol(){
		return rol.esGroso()
	}
    method esGroso() = self.esInteligente() || self.esGrosoEnSuRol()
}

class Orco inherits Personaje{
	override method potencialOfensivo(){
		return super() * 1.1
	}
	override method esInteligente(){
		return false
	}
}


// -----------------------
// ROLES
// -----------------------

object guerrero{
	method potencialExtra() = 100
	method esGroso(personaje) = personaje.fuerza() >50
}

object brujo{
	method potencialExtra() = 0
	method esGroso(personaje) = true
}

class Cazador{
	var property mascota
	method potencialExtra() = mascota.potencialOfensivo()
	method esGroso() = mascota.esLongeva()
	
}
// -----------------------
// -----------------------

class Mascota{
	var edad
	method fuerza(){
		return 100		
	}
	method tieneGarras() = true
	method esLongeva() = edad > 10
	
	method potencialOfensivo(){
		if(self.tieneGarras()) {
			return self.fuerza() * 2
		}
		else { 
			return self.fuerza()
		}
	}
}

// -----------------------
// ZONAS
// -----------------------
class Zona {
	method potencialDefensivo()
}

class Ciudad  inherits Zona {
	override method potencialDefensivo(){}
}

class Aldea inherits Zona {
	var habitantes
	var property maximoDeHabitantes
    override method potencialDefensivo(){}
	
}



// -----------------------
// INVASION
// -----------------------




class Ejercito {
	const property integrantes = []

	method potencialOfensivoTotal() = integrantes.map{personaje => personaje.potencialOfensivo()}.sum()
	method potencialOfensivoTotal2() = integrantes.sum{personaje => personaje.potencialOfensivo()}
	
	
	method atacarLocalidad(localidad){
		if(self.potencialOfensivoTotal() > localidad.potencialDefensivo()){
			localidad.serOcupadaPor(self)
		}
		
	}
	
}
	
class Localidad{
	var ejercitoDefensor = []
	var property tipoLocalidad
	method potencialOfensivoTotal() = ejercitoDefensor.map{personaje => personaje.potencialOfensivo()}.sum()
	
}	