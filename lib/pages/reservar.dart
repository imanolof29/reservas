import 'package:flutter/material.dart';
import 'package:reservas/model/restaurante.dart';

class ReservarScreen extends StatefulWidget{

  final Restaurante restaurante;

  const ReservarScreen({Key? key, required this.restaurante}) : super(key: key);

  @override
  _ReservarScreenState createState()=> _ReservarScreenState();
}

class _ReservarScreenState extends State<ReservarScreen>{

  TextEditingController comensales = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Reserva en ${widget.restaurante.restaurante}"),
            TextField(),
            ElevatedButton(
              onPressed: (){}, 
              child: Text("Reservar")
            )
          ],
        ),
      ),
    );
  }
  
}