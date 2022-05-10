import 'package:flutter/material.dart';

class mythirsmap extends StatefulWidget {
  @override
  State<mythirsmap> createState() => _mythirsmapState();
}

class _mythirsmapState extends State<mythirsmap> {
  Map map3 = {
    "shape_name": "rectangle",
    "property": {"width": 5.0, "breadth": 10.0}
  };

  Map property = {"width": 5.0, "breadth": 10.0};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcom3 m1 = Welcom3.fromJson(map3);

    print("shapname==${m1.shape_name}");
    print("property==${m1.property.width}");
    print("property==${m1.property.breadth}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Map"),
      ),
    );
  }
}

class Welcom3 {
  // "shape_name":"rectangle",
  // "property":{
  // "width":5.0,
  // "breadth":10.0

  String shape_name;
  exit property;

  Welcom3(this.shape_name, this.property);

  factory Welcom3.fromJson(Map map3) {
    exit mmm1 = exit.fromJson(map3['property']);
    return Welcom3(map3['shape_name'], mmm1);
  }
}

class exit {
  // "property": {"width": 5.0, "breadth": 10.0}

  double width;
  double breadth;

  exit(this.width, this.breadth);

  factory exit.fromJson(Map property) {
    return exit(property['width'], property['breadth']);
  }
}
