part of 'bored_bloc.dart';

sealed class BoredState extends Equatable {
  const BoredState();

  @override
  List<Object> get props => [];
}

final class BoredInitial extends BoredState {}

final class BoredLoading extends BoredState {}

final class BoredLoaded extends BoredState {
  final Bored bored;

  const BoredLoaded(this.bored);

  @override
  List<Object> get props => [bored];
}

final class BoredError extends BoredState {
  final String message;

  const BoredError(this.message);

  @override
  List<Object> get props => [message];
}
