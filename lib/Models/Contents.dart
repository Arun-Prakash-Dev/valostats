// ignore_for_file: unnecessary_null_comparison

class Contents {
  late String version;
  late List<Characters> characters;
  late List<Maps> maps;
  late List<Equips> equips;

  Contents(
      {required this.version,
      required this.characters,
      required this.maps,
      required this.equips});

  Contents.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    if (json['characters'] != null) {
      characters = [];
      json['characters'].forEach((v) {
        characters.add(Characters.fromJson(v));
      });
    }
    if (json['maps'] != null) {
      maps = [];
      json['maps'].forEach((v) {
        maps.add(Maps.fromJson(v));
      });
    }

    if (json['equips'] != null) {
      equips = [];
      json['equips'].forEach((v) {
        equips.add(Equips.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['version'] = version;
    if (characters != null) {
      data['characters'] = characters.map((v) => v.toJson()).toList();
    }
    if (maps != null) {
      data['maps'] = maps.map((v) => v.toJson()).toList();
    }

    if (equips != null) {
      data['acts'] = equips.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class Characters {
  late String name;

  Characters({
    required this.name,
  });

  Characters.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    return data;
  }
}

class Equips {
  late String name;

  Equips({
    required this.name,
  });

  Equips.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    return data;
  }
}

class Maps {
  late String name;

  late String id;
  late String assetName;
  late String assetPath;

  Maps(
      {required this.name,
      required this.id,
      required this.assetName,
      required this.assetPath});

  Maps.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;

    data['id'] = id;
    data['assetName'] = assetName;
    data['assetPath'] = assetPath;
    return data;
  }
}

class Acts {
  late String id;
  late String parentId;
  late String type;
  late String name;

  late bool isActive;

  Acts(
      {required this.id,
      required this.parentId,
      required this.type,
      required this.name,
      required this.isActive});

  Acts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parentId'];
    type = json['type'];
    name = json['name'];

    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['parentId'] = parentId;
    data['type'] = type;
    data['name'] = name;

    data['isActive'] = isActive;
    return data;
  }
}
