import 'package:flutter/material.dart';

class thirdmap extends StatefulWidget {
  @override
  State<thirdmap> createState() => _thirdmapState();
}

class _thirdmapState extends State<thirdmap> {
  Map map3 = {
    "shape_name": "rectangle",
    "property": {"width": 5.0, "breadth": 10.0}
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcome3 wel3 = Welcome3.fromJson(map3);

    print("shapename==${wel3.shape_name}");
    print("properties==${wel3.property.width}");
    print("properties==${wel3.property.breadth}");
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

class Welcome3 {
  // "shape_name": "rectangle",
  // "property": {"width": 5.0, "breadth": 10.0}

  String shape_name;
  Property property;

  Welcome3(this.shape_name, this.property);

  factory Welcome3.fromJson(Map map3) {
    return Welcome3(map3['shape_name'], Property.fromJson(map3['property']));
  }
}

class Property {
  // "property": {"width": 5.0, "breadth": 10.0}

  double width;
  double breadth;

  Property(this.width, this.breadth);

  factory Property.fromJson(map3) {
    return Property(map3['width'], map3['breadth']);
  }
}
