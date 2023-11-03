import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'estacionamiento_event.dart';
part 'estacionamiento_state.dart';

class EstacionamientoBloc extends Bloc<EstacionamientoEvent, EstacionamientoState> {
  EstacionamientoBloc() : super(EstacionamientoInitial()) {
    on<EstacionamientoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
