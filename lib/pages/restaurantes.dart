import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservas/bloc/restaurantes/restaurante_bloc.dart';
import 'package:reservas/components/loading.dart';
import 'package:reservas/model/restaurante.dart';

class RestaurantesScreen extends StatefulWidget{

  const RestaurantesScreen({Key? key}) : super(key: key);

  @override
  _RestauranteScreenState createState()=> _RestauranteScreenState();
}

class _RestauranteScreenState extends State<RestaurantesScreen>{

  final RestauranteBloc _bloc = RestauranteBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RestauranteBloc, RestauranteState>(
        listener: (context, state){
          if(state is RestauranteError){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.mensajeError!))
            );
          }
        },
        child: BlocBuilder<RestauranteBloc, RestauranteState>(
          builder: (context, state){
            if(state is RestauranteLoading){
              return const LoadingSpinner();
            }else if(state is RestauranteLoaded){
              return _buildList(context, state.restaurantes);
            }else{
              return Container();
            }
          }
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, List<Restaurante> restaurantes){
    return ListView.builder(
      itemCount: restaurantes.length,
      itemBuilder: (context, index){
        return Card(
          child: Column(
            children: [
              Text(restaurantes[index].restaurante),
            ],
          ),
        );
      }
    );
  }
}