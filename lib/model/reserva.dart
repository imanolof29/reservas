import 'package:reservas/model/restaurante.dart';

class Reserva{
  final int? id;
  final Restaurante restaurante;
  final String fechaReservaRealizada;
  final String fechaReserva;
  final int comensales; 

  Reserva({this.id, required this.restaurante, required this.fechaReservaRealizada, required this.fechaReserva, required this.comensales});

  Reserva.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        restaurante = json['restaurante'],
        fechaReserva = json['fec_reserva'],
        fechaReservaRealizada = json['fec_reserva_realizada'],
        comensales = json['comensales'];

}