import 'package:flutter/material.dart';

import '../data/Data.dart';

class AgentsPage extends StatefulWidget {
  const AgentsPage({super.key});

  String get s => s;

  @override
  State<AgentsPage> createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  List<String> agents = [];
  Data data = Data();
  bool _isLoading = true;
  bool _error = false;

  void getAgents() async {
    try {
      agents = (await data.getAgents())!;
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      _error = true;
    }
  }

  @override
  void initState() {
    getAgents();
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
                        agents[index],
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )),
                itemCount: agents.length - 1));
  }
}
