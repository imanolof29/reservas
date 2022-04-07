import 'package:flutter/material.dart';
import 'package:reservas/components/form_input_field.dart';
import 'package:reservas/components/password_input_field.dart';
import 'package:reservas/components/social_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                  "Bienvenid@ de nuevo!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24
                  ),
                ),
                const SizedBox(height: 100),
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
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Inicia sesion",
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
                    Text("O crea una cuenta"),
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