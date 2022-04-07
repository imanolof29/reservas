import 'dart:convert';

import 'package:reservas/model/reserva.dart';
import 'package:http/http.dart' as http;

class ReservasRepository{
  Future<List<Reserva>> getReservas() async{
    const url = '';
    final response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => Reserva.fromJson(e)).toList(); 
    }else{
      throw Exception('No se han podido cargar las reservas');
    }
  }
}