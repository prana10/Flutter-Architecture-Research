import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '/path.dart';

part 'bored_event.dart';
part 'bored_state.dart';

class BoredBloc extends Bloc<BoredEvent, BoredState> {
  final BoredRepository boredRepository;

  BoredBloc({
    required this.boredRepository,
  }) : super(BoredInitial()) {
    on<BoredEvent>((event, emit) async {
      // get random activity
      await getRandomActivity(event, emit);
    });
  }

  // get random activity function Bloc
  Future<void> getRandomActivity(
    BoredEvent event,
    Emitter<BoredState> emit,
  ) async {
    if (event is GetRandomActivity) {
      emit(BoredLoading());
      await boredRepository.getRandomActivity().then(
        (bored) {
          bored.fold(
            (error) => emit(BoredError(error.message)),
            (data) => emit(BoredLoaded(data)),
          );
        },
      ).catchError(
        (e) {
          emit(BoredError(e.toString()));
        },
      );
    }
  }
}
