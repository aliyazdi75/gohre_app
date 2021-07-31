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

class ListenLocationsUpdated extends HomeEvent {
  const ListenLocationsUpdated();
}

class LocationsUpdated extends HomeEvent {
  const LocationsUpdated(this.newLocations);

  final Locations newLocations;

  @override
  List<Object?> get props => [newLocations];
}
