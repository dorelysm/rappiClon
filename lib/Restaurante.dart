
class Restaurante {
  int id;
  String nombre;
  String tipo;
  double valorDomicilio;
  String tiempoEspera;
  String logo;

  Restaurante({required this.id, required this.nombre, required this.tipo, required this.valorDomicilio, required this.tiempoEspera, required this.logo});

  Map<String, dynamic> toMap(){
    return {'id': id, 'nombre': nombre, 'tipo': tipo, 'valorDomicilio': valorDomicilio, 'tiempoEspera': tiempoEspera, 'logo': logo};
  }
}