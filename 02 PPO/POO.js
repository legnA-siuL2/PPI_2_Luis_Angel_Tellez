// Definición de la clase principal Aviones con 3 atributos
class Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima) {
    this.modelo = modelo;
    this.capacidadPasajeros = capacidadPasajeros;
    this.velocidadMaxima = velocidadMaxima;
  }

// Se le agregan 2 metodos a la clase principal, se dejan con console.log para ver los resultados en consola
  despegar() {
    console.log("El avión " + this.modelo + " con capacidad para " + this.capacidadPasajeros + " pasajeros está despegando y pronto alcanzará una velocidad de " + this.velocidadMaxima);
  }

  aterrizar() {
    console.log("El avión " + this.modelo + " con capacidad para " + this.capacidadPasajeros + " pasajeros está aterrizando despues de volar a una velocidad de " + this.velocidadMaxima);
  }
}

const aeroplano = new Aviones ('avion01', 10 , '100Km/h');
const biplano = new Aviones ('avion02', 20 , '200Km/h');

aeroplano.despegar()
aeroplano.aterrizar()

biplano.despegar()
biplano.aterrizar()


// Herencia 1: AvionComercial hereda de Aviones con un atributo adicional (aerolinea)
class AvionComercial extends Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, aerolinea) {
    super(modelo, capacidadPasajeros, velocidadMaxima);
    this.aerolinea = aerolinea;
  }

  // Metodo específico de AvionComercial
  rutaComercial() {
    console.log("El avión " + this.modelo + " con capacidad para " + this.capacidadPasajeros + " pasajeros alcanza una velocidad max de " + this.velocidadMaxima + " avion insignia de la aerolinea " + this.aerolinea);
  }
}

const comercial01 = new AvionComercial ('comercial01', 150 , '400Km/h', 'Vuela con Legna');

comercial01.rutaComercial()

// Herencia 2: AvionCarga hereda de Aviones con un atributo adicional (Capacidad de carga)
class AvionCarga extends Aviones {
  constructor(modelo, velocidadMaxima, capacidadCarga) {
    super(modelo, 0, velocidadMaxima);
    this.capacidadCarga = capacidadCarga;
  }

  // Metodo específico de AvionCarga
  cargarMercancia() {
    console.log("El avión " + this.modelo + " no puede cargar pasajeros" + " pero tiene un limite de carga de " + this.capacidadCarga + " alcanzando una velocidad max de " + this.velocidadMaxima);
 }
}

const carga01 = new AvionCarga ('carga01', '400Km/h', '2000Kg');

carga01.cargarMercancia()

// Herencia 3: AvionDeCombate hereda de Aviones con un atributo adicional (armamento)
class AvionCombate extends Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, armamento) {
    super(modelo, capacidadPasajeros, velocidadMaxima);
    this.armamento = armamento;
  }

  // Metodo específico de AvionDeCombate
  armas() {
    console.log("El avión especial de combate " + this.modelo + " tiene un impresionante armamento de " + this.armamento + " pudiendo llevar hasta " + this.capacidadPasajeros + " pasajeros y alcanzando una velocidad max de " + this.velocidadMaxima);
  }
}

const combate01 = new AvionCombate ('Legna2126', 2, '2500Km/h', 'misiles termo-nucleares');

combate01.armas()

// Crear polimorfismos

class AvionPolimorfico extends AvionCombate {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, armamento, accion) {
    super(modelo, capacidadPasajeros, velocidadMaxima, armamento);
    this.accion = accion;
  }

  despegar() {
    console.log("la nave " + this.modelo + " está despegando pero de forma vertical al alcanzar su altura maxima podrá " + this.accion + " con su armamento de " + this.armamento);
  }
}

const helicoptero01 = new AvionPolimorfico ('Helicoptero01', 0,'700 Km/H', 'misiles de gravedad', 'atacar')

helicoptero01.despegar()

