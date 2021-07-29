part of 'bloc.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.locations = const <Location>[],
  });

  final HomeStatus status;
  final List<Location> locations;

  HomeState copyWith({
    HomeStatus? status,
    List<Location>? locations,
  }) {
    return HomeState(
      status: status ?? this.status,
      locations: locations ?? this.locations,
    );
  }

  @override
  List<Object?> get props => [status, locations];
}
