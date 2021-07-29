part of 'bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class GetLocationsRequested extends HomeEvent {
  const GetLocationsRequested();
}
