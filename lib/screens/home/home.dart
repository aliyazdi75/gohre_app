import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grohe_app/blocs/home/bloc.dart';
import 'package:grohe_app/models/appliance.dart';
import 'package:grohe_app/models/location.dart';
import 'package:grohe_app/models/room.dart';
import 'package:grohe_app/repositories/home/index.dart';
import 'package:grohe_app/screens/device/device.dart';

import 'components/index.dart';

class ApplianceItem {
  const ApplianceItem(this.location, this.room, this.appliance);

  final Location location;
  final Room room;
  final Appliance appliance;
}

class HomeNavigation extends StatelessWidget {
  HomeNavigation({Key? key}) : super(key: key);

  final HomeRepository homeRepository = HomeRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RepositoryProvider(
        create: (context) => homeRepository,
        child: BlocProvider(
          create: (context) => HomeBloc(homeRepository: homeRepository),
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              switch (state.status) {
                case HomeStatus.failure:
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                        content: Text('Failure due to getting Locations!'),
                      ),
                    );
                  break;
                default:
                  break;
              }
            },
            child: Navigator(
              onGenerateRoute: (settings) {
                Widget page = const HomePage();
                if (settings.name == DevicePage.routeName) {
                  final args = settings.arguments as DevicePageArguments;
                  page = DevicePage(applianceItem: args.applianceItem);
                }
                return MaterialPageRoute(builder: (_) => page);
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.initial) {
          BlocProvider.of<HomeBloc>(context).add(const GetLocationsRequested());
        }
        return NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: true,
                centerTitle: true,
                pinned: true,
                expandedHeight: 250,
                actions: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.add),
                  ),
                ],
                flexibleSpace: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/wave.jpg'),
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            'OVERVIEW',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Image(
                            image: AssetImage('assets/checkmark.png'),
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          'Hello Timo, stay hydrated to perform better!',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ];
          },
          body: Center(
            child: state.status != HomeStatus.success
                ? Text(
                    state.status == HomeStatus.loading
                        ? 'Loading...'
                        : 'Failed!',
                  )
                : ListView.builder(
                    itemCount: state.locations.length,
                    itemBuilder: (BuildContext context, int locationIndex) {
                      final applianceItems = [];
                      if (state.status == HomeStatus.success) {
                        for (var room in state.locations[locationIndex].rooms) {
                          for (var appliance in room.appliances) {
                            applianceItems.add(ApplianceItem(
                              state.locations[locationIndex],
                              room,
                              appliance,
                            ));
                          }
                        }
                      }
                      return ExpansionTile(
                        title: Row(
                          children: [
                            const Icon(Icons.location_pin),
                            Text(state.locations[locationIndex].name),
                          ],
                        ),
                        children: <Widget>[
                          SizedBox(
                            height: 320.0,
                            child: PageView.builder(
                              itemCount: applianceItems.length,
                              itemBuilder:
                                  (BuildContext context, int applianceIndex) {
                                return ApplianceCard(
                                  applianceItem: applianceItems[applianceIndex],
                                );
                              },
                            ),
                          )
                        ],
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
