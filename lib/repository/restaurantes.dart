import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:reservas/model/restaurante.dart';

class RestaurantesRepository{
  Future<List<Restaurante>> getRestaurantes() async{
    const headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Token 83024646112bdd1dbf83552623ae3db9e522e318',
    };
    const url = 'http://192.168.0.26:8000/api/restaurantes';
    final response = await http.get(
      Uri.parse(url),
      headers: headers
    );
    if(response.statusCode==200){
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => Restaurante.fromJson(e)).toList(); 
    }else{
      throw Exception('No se han podido cargar los restaurantes');
    }
  }
}