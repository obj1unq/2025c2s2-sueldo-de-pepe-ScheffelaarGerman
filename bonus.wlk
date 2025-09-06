
import pepe.*
//-- Empleados --//
object sofia{
  var property categoria = cadete
  var property bonoResultado = nulo
  
  method sueldo(){
    return self.sueldoNeto() + self.extraPorResultado() 
  }

  method sueldoNeto(){
    return categoria.neto() * 1.3
  }

  method extraPorResultado(){
    return bonoResultado.montoPara(self)
  }
}
object roque{
  var property bonoResultado = nulo
  
  method sueldo(){
    return self.sueldoNeto() + self.extraPorResultado()  + 9000
  }

  method sueldoNeto(){
    return 28000
  }
  method extraPorResultado(){
    return bonoResultado.montoPara(self)
  }
}

object ernesto {
    var property bonoPresentismo =  nulo
    var property companero = roque
    
    method faltas() {
        return 0
    }
    method sueldoNeto() {
        return companero.sueldoNeto()
    }
    method extraPorPresentismo() {
        return bonoPresentismo.montoPara(self)
    }
    method sueldo() {
        return self.sueldoNeto() + self.extraPorPresentismo()
    }
}
//-- categorias --//
object vendedor {
  var aumento = true
    method neto(){
      return 16000 *( 1 + if (aumento) 0.25 else 0)
    }
    method activarAumentoPorMuchasVentas(){
      aumento = true
    }
    method desactivarAumentoPorMuchasVentas(){
      aumento = false
    }
  }
object medioTiempo {
  var property categoriaBase = cadete
    method neto(){
      return categoriaBase.neto() / 2
    }
  }
