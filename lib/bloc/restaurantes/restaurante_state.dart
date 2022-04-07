part of 'restaurante_bloc.dart';

abstract class RestauranteState extends Equatable{
  const RestauranteState();

  @override
  List<Object?> get props => [];

}

class RestauranteInitial extends RestauranteState{}

class RestauranteLoading extends RestauranteState{}

class RestauranteLoaded extends RestauranteState{
  final List<Restaurante> restaurantes;
  const RestauranteLoaded(this.restaurantes);
}

class RestauranteError extends RestauranteState{
  final String? mensajeError;
  const RestauranteError(this.mensajeError);
}