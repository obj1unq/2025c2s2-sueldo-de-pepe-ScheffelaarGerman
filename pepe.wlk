object pepe {
    var categoria
    var bonoResultado
    var bonoPresentismo
    var faltas 

    method sueldo() {
    const  neto = self.categoria.neto()
    return neto +
           self.bonoResultado.montoPara(neto) +
           self.bonoPresentismo.montoPara(neto, self.faltas)
}
}

object gerente {
    method neto(){
        return 15000
    }
} 

object cadete {
    method neto(){
        return 20000
    }
} 


object porcentaje10{
    method montoPara(neto){
    return    neto * 0.10
    }
}

object montoFijo{
    method montoPara(neto){
    return    800
    }
}

object nuloRes{
    method montoPara(neto){
    return 0
    }
}

object normal{
    method montoPara(neto, faltas){    
    if (faltas == 0) {return 2000}
    if (faltas == 1) {return 1000}
    return 0
    }
}

object ajuste{
    method montoPara(neto, faltas){
    if (faltas == 0) {return 100}
    return 0
    }
}
object demagogico {
    method montoPara(neto, faltas){
        if (neto < 18000) {return 500}
        return 300
    }
}

object nuloPres {
     method montoPara(neto, faltas){
     return 0
    }
}