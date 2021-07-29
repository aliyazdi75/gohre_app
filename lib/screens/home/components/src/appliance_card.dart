import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grohe_app/screens/device/device.dart';
import 'package:grohe_app/screens/home/home.dart';

class ApplianceCard extends StatelessWidget {
  const ApplianceCard({Key? key, required this.applianceItem})
      : super(key: key);

  final ApplianceItem applianceItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              DevicePage.routeName,
              arguments: DevicePageArguments(applianceItem: applianceItem),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    applianceItem.appliance.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  contentPadding: const EdgeInsets.all(0.0),
                  subtitle: Text(applianceItem.room.name),
                  leading: const Image(
                    image: AssetImage('assets/device.png'),
                  ),
                  trailing:
                      const Icon(Icons.navigate_next, color: Colors.black),
                ),
                const SizedBox(height: 20.0),
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
                  trailing: const Icon(Icons.favorite, color: Colors.green),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'CO2',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      '${applianceItem.appliance.data.measurement.remainingCO2} %',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Filter',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      '${applianceItem.appliance.data.measurement.remainingFilter} %',
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
