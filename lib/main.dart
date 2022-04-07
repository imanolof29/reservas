import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:reservas/bloc/restaurantes/restaurante_bloc.dart';
import 'package:reservas/constants.dart';
import 'package:reservas/model/restaurante.dart';
import 'package:reservas/pages/login.dart';
import 'package:reservas/pages/registro.dart';
import 'package:reservas/pages/restaurantes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=>RestauranteBloc()
          ..add(GetRestaurantList())
        )
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Reservas',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: HexColor(primaryRed)
          ),
          appBarTheme: const AppBarTheme()
        ),
        home: const LoginScreen(),
      ),
    );
  }
}

