import 'package:flutter/material.dart';
import 'package:reservas/components/form_input_field.dart';
import 'package:reservas/components/password_input_field.dart';
import 'package:reservas/components/social_auth.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({ Key? key }) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {

  TextEditingController nombre = TextEditingController();
  TextEditingController apellido = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bienvenid@!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24
                  ),
                ),
                const SizedBox(height: 50),
                const Text("Nombre"),
                const SizedBox(height: 10),
                FormInputField(
                  icon: Icons.person,
                  placeholder: 'Nombre', 
                  controller: nombre, 
                  keyboardType: TextInputType.text, 
                ),
                const SizedBox(height: 20),
                const Text("Apellido"),
                const SizedBox(height: 10),
                FormInputField(
                  icon: Icons.person,
                  placeholder: 'Apellido', 
                  controller: apellido, 
                  keyboardType: TextInputType.text, 
                ),
                const SizedBox(height: 20),
                const Text("Email"),
                const SizedBox(height: 10),
                FormInputField(
                  icon: Icons.email, 
                  placeholder: 'example@gmail.com', 
                  controller: email, 
                  keyboardType: TextInputType.emailAddress, 
                ),
                const SizedBox(height: 20),
                const Text("Contraseña"),
                const SizedBox(height: 10),
                PasswordInputField(
                  icon: Icons.lock, 
                  placeholder: '*************', 
                  controller: password, 
                  keyboardType: TextInputType.text, 
                ),
                const SizedBox(height: 75),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Registrate",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50), // fromHeight use double.infinity as width and 40 is the height
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black38,
                      ),
                    ),
                    Text("O continua con"),
                    Expanded(
                      child: Divider(
                        color: Colors.black38,
                      )
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const SocialAuth()
              ],
            ),
          )
        ),
      )
    );
  }
}