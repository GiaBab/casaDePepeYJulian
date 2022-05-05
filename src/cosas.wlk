object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesa {
	var precio = 260
	method precio() { return precio }
	method nuevoPrecio(valor){precio = valor}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	}
	
object salsaDeTomates {
	var precio = 90
	method precio() { return precio }
	method nuevoPrecio(valor){precio = valor}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
	}
	
object microHondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kilosDeCebolla {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	method precio() { return 500 * dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar {
	method cotizacion(){return 200}
}

object packComida{
	var plato
	var aderezo
	
	method configurarPackComida(unPlato,unAderezo){
		plato = unPlato
		aderezo = unAderezo
	}
	method precio() { return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object packRegalo{
	const regalo = []
	
	method annairRegalo(cosa){
		regalo.add(cosa)
	}
	method quitarCompoentente(cosa){
		regalo.remove(cosa)
	}
	method regalos()= regalo
	
	method precio(){return regalo.sum({r => r.precio()})*0.80}
	method esComida(){return regalo.all({r => r.esComida()})}
	method esElectrodomestico(){return regalo.any({r => r.esElectrodomestico()})}
}
