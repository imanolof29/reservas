class Restaurante{
  final int? id;
  final String restaurante;
  final String imagen;

  Restaurante({this.id, required this.restaurante, required this.imagen});

  Restaurante.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        restaurante = json['restaurante'],
        imagen = json['imagen'];
}