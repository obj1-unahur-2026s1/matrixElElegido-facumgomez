object nave {
  const pasajeros = []

  method subirPasajero(pasajero) { pasajeros.add(pasajero) }
  method subirTodosLosPasajeros(listaDePasajeros) { pasajeros.addAll(listaDePasajeros) }
  method bajarPasajero(pasajero) { pasajero.remove(pasajero) }

  method cantidadDePasajeros() = pasajeros.size()
  method pasajeroConMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
  method pasajeroConMenorVitalidad() = pasajeros.min({p => p.vitalidad()})
  method estaEquilibrada() = self.pasajeroConMayorVitalidad() < self.pasajeroConMenorVitalidad() * 2
  method esElElegido() = pasajeros.any({p => p.esElElegido()})
  method chocar() {
    pasajeros.forEach({p => p.saltar()})
    pasajeros.clear()
  }

  method acelerar() {
    pasajeros.filter({p => !p.esElElegido()}).forEach({p => p.saltar()})
  }
}