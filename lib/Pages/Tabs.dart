import 'package:flutter/material.dart';
import 'package:valostats/Pages/AgentsPage.dart';
import 'package:valostats/Pages/Mapspage.dart';

import 'EquipsPage.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Center(child: Text('Track.gg')),
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'Agents',
                  ),
                  Tab(
                    text: 'Maps',
                  ),
                  Tab(
                    text: 'Equips',
                  ),
                ])),
            body: const TabBarView(children: [
              AgentsPage(),
              MapsPage(),
              EquipsPage(),
            ]),
          )),
    );
  }
}
