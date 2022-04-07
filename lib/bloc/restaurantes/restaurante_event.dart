part of 'restaurante_bloc.dart';

abstract class RestauranteEvent extends Equatable{
  const RestauranteEvent();

  @override
  List<Object> get props => [];

}

class GetRestaurantList extends RestauranteEvent{}