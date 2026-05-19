object neo {
  var energia = 100

  method saltar() { energia = energia / 2 }
  method vitalidad() = energia / 10
  method esElegido() = true
}

object morfeo {
  var vitalidad = 8
  var estaCansado = false

  method saltar() { 
    estaCansado = !estaCansado
    vitalidad = vitalidad - 1 
  }
  method vitalidad() = vitalidad
  method esElegido() = false
}

object trinity {
  var vitalidad = 0

  method saltar() { }
  method esElegido() = false
}