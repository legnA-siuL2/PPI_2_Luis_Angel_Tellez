// Definición de la clase principal Aviones
class Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima) {
    this.modelo = modelo;
    this.capacidadPasajeros = capacidadPasajeros;
    this.velocidadMaxima = velocidadMaxima;
  }

  // Metodo 1
  despegar() {
    console.log(`El avión ${this.modelo} está despegando.`);
     }

  // Metodo 2
  aterrizar() {
    console.log(`El avión ${this.modelo} está aterrizando.`);
  }
}

// Herencia 1: AvionComercial hereda de Aviones
class AvionComercial extends Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, aerolinea) {
    super(modelo, capacidadPasajeros, velocidadMaxima);
    this.aerolinea = aerolinea;
  }

  // Metodo específico de AvionComercial
  ofrecerServicio() {
    console.log(`Bienvenidos a bordo de ${this.aerolinea}.`);
  }
}

// Herencia 2: AvionCarga hereda de Aviones
class AvionCarga extends Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, capacidadCarga) {
    super(modelo, capacidadPasajeros, velocidadMaxima);
    this.capacidadCarga = capacidadCarga;
  }

  // Metodo específico de AvionCarga
  cargarMercancia() {
    console.log(`Cargando ${this.capacidadCarga} toneladas de mercancía.`);
  }
}

// Herencia 3: AvionDeCombate hereda de Aviones
class AvionDeCombate extends Aviones {
  constructor(modelo, capacidadPasajeros, velocidadMaxima, armamento) {
    super(modelo, capacidadPasajeros, velocidadMaxima);
    this.armamento = armamento;
  }

  // Metodo específico de AvionDeCombate
  atacar() {
    console.log(`¡Objetivo eliminado con ${this.armamento}!`);
  }
}

// Crear instancias de cada tipo de avión
const avionComercial = new AvionComercial('Boeing 747', 300, 900, 'AirlineXYZ');
const avionCarga = new AvionCarga('Cargomaster 200', 2, 800, 5000);
const avionDeCombate = new AvionDeCombate('F-22 Raptor', 1, 2500, 'misiles');

// Llamada a metodos y uso del polimorfismo
avionComercial.despegar();
avionCarga.aterrizar(); // Uso del metodo heredado de Aviones
avionDeCombate.atacar();

// Uso del polimorfismo llamando al método específico de cada subclase a través de la referencia de la clase principal
const flota = [avionComercial, avionCarga, avionDeCombate];
flota.forEach(avion => {
  avion.despegar();
  if (avion instanceof AvionComercial) {
    avion.ofrecerServicio();
  } else if (avion instanceof AvionCarga) {
    avion.cargarMercancia();
  } else if (avion instanceof AvionDeCombate) {
    avion.atacar();
  }
});