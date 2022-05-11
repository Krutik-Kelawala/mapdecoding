import 'package:flutter/material.dart';
import 'package:mapdecoding/myfifthmap.dart';
import 'package:mapdecoding/myforthmap.dart';

void main() {
  runApp(MaterialApp(
    home: fivemap(),
  ));
}

class myfisrtmap extends StatefulWidget {
  @override
  State<myfisrtmap> createState() => _myfisrtmapState();
}

class _myfisrtmapState extends State<myfisrtmap> {
  Map map = {"id": "487349", "name": "Pooja Bhaumik", "score": 1000};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcome mm = Welcome.fromJson(map);

    print("id===${mm.id} name===${mm.name}  score == ${mm.score}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map decod"),
      ),
    );
  }
}

class Welcome {
  // "id": "487349", "name": "Pooja Bhaumik", "score": 1000

  String id;
  String name;
  int score;

  Welcome(this.id, this.name, this.score);

  factory Welcome.fromJson(Map map) {
    return Welcome(map['id'], map['name'], map['score']);
  }
}
