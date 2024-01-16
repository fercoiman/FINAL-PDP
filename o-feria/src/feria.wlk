object julieta{
	var tickets = 15
	var fuerza = 80
	var property punteria = 7
	var property cansancio = 0 
	
	method tickets(){
		return tickets
	}
	method tickets(premio){
		tickets += premio
	}
	
	method jugar(juego){
		juego.otorgarPremio(self)
		juego.actualizarCansancio(self)	
	}
}


object tiroAlBlanco{
	
	method otorgarPremio(jugador){
		var premio = 10 * jugador.punteria()
		jugador.tickets(premio)
		}
	method actualizarCansancio(jugador){
		const cansancio = 3 + jugador.cansancio()
		jugador.cansancio(cansancio)
		}
	}
	

object pruebaDeFuerza{
	
	method otorgarPremio(jugador){
		var premio = 20
		if (jugador.fuerza() >= 75){
			jugador.tickets(premio)			
		}
	}
	method actualizarCansancio(jugador){
		const cansancio = 8 + jugador.cansancio()
		jugador.cansancio(cansancio)
		}
	
}

object ruedaDeLaFortuna{
	
}

	