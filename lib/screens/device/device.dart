import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grohe_app/blocs/home/bloc.dart';
import 'package:grohe_app/screens/home/home.dart';

class DevicePageArguments {
  const DevicePageArguments({required this.applianceItem});

  final ApplianceItem applianceItem;
}

class DevicePage extends StatelessWidget {
  static const routeName = '/extractArguments';

  const DevicePage({Key? key, required this.applianceItem}) : super(key: key);
  final ApplianceItem applianceItem;

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
                    child: Icon(Icons.settings),
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            applianceItem.appliance.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  'CO2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  '${applianceItem.appliance.data.measurement.remainingCO2}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const Image(
                              image: AssetImage('assets/device.png'),
                              height: 70.0,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Filter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  '${applianceItem.appliance.data.measurement.remainingFilter}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          applianceItem.location.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(
                          applianceItem.room.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(150, 38),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: const BorderSide(color: Colors.white),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(60),
                  child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                      indicatorWeight: 3.0,
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(text: 'Favorites'),
                        Tab(text: 'Manual'),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(8.0),
                  title: const Text(
                    'Favorite',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 3.0, color: Colors.green),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  leading: const Image(
                    image: AssetImage('assets/water.png'),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.favorite, color: Colors.green),
                      SizedBox(width: 8.0),
                      Text(
                        '...',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15.0),
                DottedBorder(
                  color: Colors.grey,
                  radius: const Radius.circular(50.0),
                  borderType: BorderType.RRect,
                  dashPattern: const [5],
                  strokeWidth: 3.0,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    title: const Text(
                      'Create Favorites',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    leading: const Icon(
                      Icons.add,
                      size: 45.0,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Non Implemented!'),
                            content: const Text(
                                'This Function is not implemented yet.'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
