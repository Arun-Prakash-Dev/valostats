// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Username",
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text("Sign In")),
          ),
          Flexible(
            flex: 1,
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 200.0, bottom: 50, left: 25, right: 25),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Valorant Tracker isn't endorsed by Riot Games and doesn't reflect the views or opinions of Riot Games or anyone officially involved in producing or managing Riot Games properties. Riot Games, and all associated properties are trademarks or registered trademarks of Riot Games, Inc.",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                  softWrap: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
