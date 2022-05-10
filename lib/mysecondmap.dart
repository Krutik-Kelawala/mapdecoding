import 'package:flutter/material.dart';

class mysecondmap extends StatefulWidget {
  @override
  State<mysecondmap> createState() => _mysecondmapState();
}

class _mysecondmapState extends State<mysecondmap> {
  Map map1 = {
    "city": "Mumbai",
    "streets": [
      "address1",
      "address2",
      "address3",
      "address4",
      "address5",
      "address6",
      "address7",
    ]
  };
  int i = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcome1 m = Welcome1.fromJson(map1);
    for (i = 0; i < m.streets.length; i++) {
      print("city===${m.city}");
      print("street==${m.streets[i]}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secondmap"),
      ),
    );
  }
}

class Welcome1 {
  // "city": "Mumbai",
  // "streets": ["address1", "address2"]

  String city;
  List<String> streets;

  Welcome1(this.city, this.streets);

  factory Welcome1.fromJson(Map map1) {
    return Welcome1(map1['city'], map1['streets']);
  }
}
