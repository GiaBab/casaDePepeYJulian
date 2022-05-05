import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cosas()= cosas
	method cantidadDeCosasComprada()= cosas.size()
	method tieneComida()= cosas.any({c => c.esComida()})
	method vieneDeEquiparse()= cosas.last().esElectrodomestico() or
		cosas.last().precio() > 5000
	method esDerrochona()= cosas.sum({c => c.precio()}) >= 9000
	method compraMasCara()= cosas.max({c => c.precio()})
	method electronomesticosComprados() = 
		cosas.filter({c => c.esElectrodomestico()})
	method malaEpoca()=  cosas.all({c => c.esComida()})
	method queFaltaComprar(lista)= lista.asSet().difference(cosas.asSet())
	method faltaComida()= cosas.count({c => c.esComida()}) < 1
	method gastoEnComida()= self.listaDeComida().sum({c => c.precio()})
	method listaDeComida()= cosas.filter({c=>c.esComida()})
	method comidaMasCara()= self.listaDeComida().max({c => c.precio()})
	method hayElectrodromesticosBratos()= 
		self.electronomesticosComprados().any({c=>c.precio()<3000}) 
	method precioDeElectrodomesticoComprados()=
		self.electronomesticosComprados().map({c=>c.precio()})
	method nivelEnAumento()= cosas.last().precio() >= cosas.first().precio()*2 
	method primeraComidaComprada()= self.listaDeComida().first()
	
}
