import 'package:flutter/material.dart';

import '../data/Data.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  List<String> maps = [];

  Data data = Data();
  bool _isLoading = true;
  bool _error = false;

  void getMaps() async {
    try {
      maps = (await data.getMaps())!;
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      _error = true;
    }
  }

  @override
  void initState() {
    getMaps();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            body: ListView.builder(
                itemBuilder: (context, index) => Card(
                    color: const Color(0xff03121D),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        maps[index + 1],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
                itemCount: maps.length - 2));
  }
}
