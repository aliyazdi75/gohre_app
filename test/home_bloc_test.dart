import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grohe_app/blocs/home/bloc.dart';
import 'package:grohe_app/models/appliance.dart';
import 'package:grohe_app/models/location.dart';
import 'package:grohe_app/models/room.dart';
import 'package:grohe_app/repositories/home/index.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late HomeBloc homeBloc;
  late HomeRepository homeRepository;
  final locations = Locations((b) => b
    ..locations.add(Location((b) => b
      ..id = 1
      ..name = 'location'
      ..rooms.add(Room((b) => b
        ..id = 2
        ..name = 'room'
        ..appliances.add(Appliance(
          (b) => b
            ..id = '3'
            ..name = 'appliance'
            ..data = Data(
              (b) => b
                ..measurement = Measurement(
                  (b) => b
                    ..remainingCO2 = 10
                    ..remainingFilter = 20,
                ).toBuilder(),
            ).toBuilder(),
        )))))));
  final updatedLocations = Locations((b) => b
    ..locations.add(Location((b) => b
      ..id = 1
      ..name = 'location'
      ..rooms.add(Room((b) => b
        ..id = 2
        ..name = 'room'
        ..appliances.add(Appliance(
          (b) => b
            ..id = '3'
            ..name = 'appliance'
            ..data = Data(
              (b) => b
                ..measurement = Measurement(
                  (b) => b
                    ..remainingCO2 = 20
                    ..remainingFilter = 30,
                ).toBuilder(),
            ).toBuilder(),
        )))))));

  setUp(() {
    homeRepository = MockHomeRepository();
    homeBloc = HomeBloc(homeRepository: homeRepository);
  });

  group('HomeBloc', () {
    test('initial state is HomeState', () {
      expect(homeBloc.state, const HomeState());
      homeBloc.close();
    });

    group('GetLocationsRequested', () {
      blocTest<HomeBloc, HomeState>(
        'emits [loading, success] when getLocations succeeds',
        build: () {
          when(
            () => homeRepository.getLocations(),
          ).thenAnswer((_) => Future.value(locations));
          return homeBloc;
        },
        wait: const Duration(milliseconds: 500),
        act: (bloc) {
          bloc.add(const GetLocationsRequested());
        },
        expect: () => <HomeState>[
          const HomeState(
            status: HomeStatus.loading,
          ),
          HomeState(
            status: HomeStatus.success,
            locations: locations.locations.toList(),
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [loading, success] when getLocations succeeds '
        'and updateLocations succeeds',
        build: () {
          when(
            () => homeRepository.getLocations(),
          ).thenAnswer((_) => Future.value(locations));
          when(
            () => homeRepository.updateLocations(onUpdate: (_) {}),
          ).thenAnswer((_) {});
          return homeBloc;
        },
        wait: const Duration(milliseconds: 500),
        act: (bloc) {
          bloc
            ..add(const GetLocationsRequested())
            ..add(const ListenLocationsUpdated())
            ..add(LocationsUpdated(updatedLocations));
        },
        expect: () => <HomeState>[
          const HomeState(
            status: HomeStatus.loading,
          ),
          HomeState(
            status: HomeStatus.success,
            locations: locations.locations.toList(),
          ),
          HomeState(
            status: HomeStatus.success,
            locations: updatedLocations.locations.toList(),
          ),
        ],
      );

      blocTest<HomeBloc, HomeState>(
        'emits [loading, failure] when getLocations fails',
        build: () {
          when(() => homeRepository.getLocations())
              .thenThrow(Exception('oops'));
          return homeBloc;
        },
        wait: const Duration(milliseconds: 500),
        act: (bloc) {
          bloc.add(const GetLocationsRequested());
        },
        expect: () => const <HomeState>[
          HomeState(
            status: HomeStatus.loading,
          ),
          HomeState(
            status: HomeStatus.failure,
          ),
        ],
      );
    });
  });
}
