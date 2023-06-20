import 'package:flutter/material.dart';

import '../data/Data.dart';

class EquipsPage extends StatefulWidget {
  const EquipsPage({super.key});

  @override
  State<EquipsPage> createState() => _EquipsPageState();
}

class _EquipsPageState extends State<EquipsPage> {
  List<String> equips = [];
  Data data = Data();
  bool _isLoading = true;
  bool _error = false;

  void getEquips() async {
    try {
      equips = (await data.getEquips())!;
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      _error = true;
    }
  }

  @override
  void initState() {
    getEquips();

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
                        equips[index],
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
                itemCount: equips.length - 1));
  }
}
