object tom {
    var energia = 50
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distanciaEnMetros) {
        energia = energia - distanciaEnMetros * 0.5
    }
    method velocidadMax() {
        return 5 + energia * 0.1
    }
    method puedeCazar(unaDistancia) {
        return energia >= unaDistancia / 2 
    }
    method cazarSiPuede(unRaton, unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
  var edad = 2
  method edad() {return edad}
  method cumpleAnios() {
    edad = edad + 1
    }
  method peso() {
    return edad * 20
    }
}

object nibbles {
  method peso() {
    return 35
  }
}

// Inventar otro ratón 