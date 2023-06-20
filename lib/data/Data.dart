import 'dart:convert';

import '../Models/Contents.dart';
import 'package:http/http.dart' as http;

class Data {
  String _API_KEY = "RGAPI-61d922ce-8fa8-4ca3-b902-d5ef7a178a4a";

  List<Contents> contentsList = [];
  late List<Characters> agents;
  List<String> agentNames = [];
  List<String> mapNames = [];
  List<Maps> maps = [];
  List<Equips> weapons = [];
  List<String> weaponNames = [];

  var response;

  Future<void> getAPI() async {
    response = await http.get(Uri.parse(
        "https://ap.api.riotgames.com/val/content/v1/contents?api_key=$_API_KEY"));
  }

  Future<List<String>?> getMaps() async {
    try {
      await getAPI();

      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Contents contentsModel = Contents.fromJson(jsonData);

      maps = contentsModel.maps;
      for (int i = 0; i < maps.length; i++) {
        mapNames.add(maps[i].name);
      }

      return mapNames;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<List<String>?> getAgents() async {
    try {
      await getAPI();

      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Contents contentsModel = Contents.fromJson(jsonData);

      agents = contentsModel.characters;
      for (int i = 0; i < agents.length; i++) {
        agentNames.add(agents[i].name);
      }

      return agentNames;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<List<String>?> getEquips() async {
    try {
      await getAPI();

      Map<String, dynamic> jsonData = jsonDecode(response.body);

      Contents contentsModel = Contents.fromJson(jsonData);

      weapons = contentsModel.equips;
      for (int i = 0; i < weapons.length; i++) {
        weaponNames.add(weapons[i].name);
      }

      return weaponNames;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
