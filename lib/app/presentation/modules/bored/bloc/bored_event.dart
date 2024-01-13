part of 'bored_bloc.dart';

sealed class BoredEvent extends Equatable {
  const BoredEvent();

  @override
  List<Object> get props => [];
}

class GetRandomActivity extends BoredEvent {
  const GetRandomActivity();

  @override
  List<Object> get props => [];
}
