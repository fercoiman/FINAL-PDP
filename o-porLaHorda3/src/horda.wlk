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


object cazador{
	var property mascota
	method potencialExtra() = mascota.potencialOfensivo()
	method esGroso() = mascota.esLongeva()
	
}

object brujo{
	method potencialExtra() = 0
	method esGroso() = true
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
// INVASION
// -----------------------




class Ejercito {
	const integrantes = []
	method integrantes() {return integrantes}
	method potencialOfensivoTotal() = integrantes.map{personaje => personaje.potencialOfensivo()}.sum()
	
	
}