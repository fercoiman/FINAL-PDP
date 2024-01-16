object julieta{
	var tickets = 15
	const property fuerza = 80
	var property punteria = 20
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
	
	method puedeCanjearPremio(premio){
		if (premio.costo() <= self.tickets()){
			return true
		}
		else {
			return false
		}
	}
}


object gerundio{
	method puedeCanjearPremio(premio){
			return true
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
	var premio
	var diasDesdeUltimoMantenimiento = 30
	method otorgarPremio(jugador){
		premio = 1.randomUpTo(20).roundUp(0)
		jugador.tickets(premio)
	}
	method actualizarCansancio(jugador){
		if(diasDesdeUltimoMantenimiento > 20){
			var cansancio = 1
		}
		else { 
			var cansancio = 0
		}
		jugador.cansancio(cansancio)
	}
}
// ----------------------
// PREMIOS
// ----------------------	

object ositoDePeluche{
	var property costo = 45	
}

object taladroRotoPercutor{
	var cotizacionDolar = 1150
	var costo = 4 * cotizacionDolar + 7
	method costo() = costo
}
