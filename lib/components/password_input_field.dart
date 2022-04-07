import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:reservas/constants.dart';

class PasswordInputField extends StatefulWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const PasswordInputField({ 
    Key? key, 
    required this.icon, 
    required this.placeholder,
    required this.controller,
    required this.keyboardType
  }) : super(key: key);

  @override
  _PasswordInputFieldState createState()=> _PasswordInputFieldState();

}

class _PasswordInputFieldState extends State<PasswordInputField>{

  bool _isVisible = false;
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !_isVisible,
      autocorrect: false,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        suffixIcon: IconButton(
          icon: Icon(
            _isVisible
            ? Icons.visibility
            : Icons.visibility_off,
            color: HexColor(primaryRed),
          ),
          onPressed: (){
            setState(() {
              _isVisible = !_isVisible;
            });
          },
        ),
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