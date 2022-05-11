import 'package:flutter/material.dart';

class fourmap extends StatefulWidget {
  @override
  State<fourmap> createState() => _fourmapState();
}

class _fourmapState extends State<fourmap> {
  Map map4 = {
    "id": 1,
    "name": "ProductName",
    "images": [
      {"id": 11, "imageName": "xCh-rhy"},
      {"id": 31, "imageName": "fjs-eun"}
    ]
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcom4 wel4 = Welcom4.fromJson(map4);

    print("id==${wel4.id}");
    print("name==${wel4.name}");
    for(int i = 0 ; i < wel4.images.length ; i ++)
      {

        print("aaaa===${wel4.images[i].id}");
        print("imgg==${wel4.images[i].imageName}");
      }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("four map"),
      ),
    );
  }
}

class Welcom4 {
  // {
  // "id": 1,
  // "name": "ProductName",
  // "images": [
  // {"id": 11, "imageName": "xCh-rhy"},
  // {"id": 31, "imageName": "fjs-eun"}
  // ]
  // }

  int id;
  String name;
  List<myimg> images;

  Welcom4(this.id, this.name, this.images);

  factory Welcom4.fromJson(Map map4) {
    List<myimg> temp = [];
    List imglist = map4['images'];

    for (int i = 0; i < imglist.length; i++) {
      myimg mm = myimg.fromJson(imglist[i]);
      temp.add(mm);
    }

    return Welcom4(map4['id'], map4['name'], temp);
  }
}

class myimg {
  // {"id": 11, "imageName": "xCh-rhy"},
  // {"id": 31, "imageName": "fjs-eun"}

  int id;
  String imageName;

  myimg(this.id, this.imageName);

  factory myimg.fromJson(imglist) {
    return myimg(imglist['id'], imglist['imageName']);
  }
}
