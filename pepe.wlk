
//-- Empleados --//
object pepe {
  var property categoria = cadete
  var property bonoResultado = montoFijo
  var property bonoPresentismo = normal
  var property faltas = 3

  method sueldo() {
    return self.sueldoNeto() + self.extraPorResultado() + self.extraPorPresentismo()
  }

  method sueldoNeto() {
    return categoria.neto()
  }

  method extraPorResultado() {
    return bonoResultado.montoPara(self)
  }

  method extraPorPresentismo() {
    return bonoPresentismo.montoPara(self)
  }
}

//-- Categorías-- //
object gerente {
  method neto() { 
    return 15000 
  }
}

object cadete {
  method neto() { 
    return 20000 
  }
}

//-- Bonos por Resultados-- // 
object porcentaje {
  method montoPara(empleado) { 
    return empleado.sueldoNeto() * 0.1 
  }
}

object montoFijo {
  method montoPara(empleado) { 
    return 800 
  }
}

//-- Bonos por Presentismo --//
object normal {
  method montoPara(empleado) {
    return if (empleado.faltas() == 0) 2000
           else if (empleado.faltas() == 1) 1000
           else 0
  }
}

object ajuste {
  method montoPara(empleado) {
    return if (empleado.faltas() == 0) 100 else 0
  }
}

object demagogico {
  method montoPara(empleado) {
    return if (empleado.sueldoNeto() < 18000) 500 else 300
  }
}

//-- Bono Nulo --//
object nulo {
  method montoPara(empleado) { 
    return 0 
  }
}


  
  




















