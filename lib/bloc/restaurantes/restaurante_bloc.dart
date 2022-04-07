import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reservas/model/restaurante.dart';
import 'package:reservas/repository/restaurantes.dart';
part 'restaurante_state.dart';
part 'restaurante_event.dart';

class RestauranteBloc extends Bloc<RestauranteEvent, RestauranteState>{
  RestauranteBloc(): super(RestauranteInitial()){
    final RestaurantesRepository _repository = RestaurantesRepository();

    on<GetRestaurantList>((event, emit) async{
      try{
        emit(RestauranteLoading());
        final restaurantesList = await _repository.getRestaurantes();
        emit(RestauranteLoaded(restaurantesList));
        if(restaurantesList.isEmpty){
          emit(const RestauranteError("No hay restaurantes"));
        }
      } on Error{
        emit(const RestauranteError("Error"));
      }
    });

  }
}