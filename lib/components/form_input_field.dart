import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:reservas/constants.dart';

class FormInputField extends StatelessWidget{

  final IconData icon;
  final String placeholder;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const FormInputField({Key? key, 
    required this.icon,
    required this.placeholder,
    required this.controller,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autocorrect: false,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor(primaryRed), width: 1.0),
        )
      ),
    );
  }
}