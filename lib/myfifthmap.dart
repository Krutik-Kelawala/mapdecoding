import 'package:flutter/material.dart';

class fivemap extends StatefulWidget {
  @override
  State<fivemap> createState() => _fivemapState();
}

class _fivemapState extends State<fivemap> {
  List<Welcome5> temp1 = [];
  List list5 = [
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "http://placehold.it/600/92c952",
      "thumbnailUrl": "http://placehold.it/150/92c952"
    },
    {
      "albumId": 1,
      "id": 2,
      "title": "reprehenderit est deserunt velit ipsam",
      "url": "http://placehold.it/600/771796",
      "thumbnailUrl": "http://placehold.it/150/771796"
    },
    {
      "albumId": 1,
      "id": 3,
      "title": "officia porro iure quia iusto qui ipsa ut modi",
      "url": "http://placehold.it/600/24f355",
      "thumbnailUrl": "http://placehold.it/150/24f355"
    }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < list5.length; i++) {
      Welcome5 wel5 = Welcome5.fromJson(list5[i]);
      setState(() {
        temp1.add(wel5);
      });
      print("id==${wel5.id}");
      print("b==${wel5.albumId}");
      print("c==${wel5.thumbnailUrl}");
      print("d==${wel5.title}");
      print("e==${wel5.url}");
    }

    // for get value

    for (int j = 0; j < temp1.length; j++) {
      print("idd===${temp1[j].id}");
      print("p===${temp1[j].albumId}");
      print("q===${temp1[j].url}");
      print("r===${temp1[j].title}");
      print("s===${temp1[j].thumbnailUrl}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fifth map"),
      ),
    );
  }
}

class Welcome5 {
  // {
  // "albumId": 1,
  // "id": 1,
  // "title": "accusamus beatae ad facilis cum similique qui sunt",
  // "url": "http://placehold.it/600/92c952",
  // "thumbnailUrl": "http://placehold.it/150/92c952"
  // },
  // {
  // "albumId": 1,
  // "id": 2,
  // "title": "reprehenderit est deserunt velit ipsam",
  // "url": "http://placehold.it/600/771796",
  // "thumbnailUrl": "http://placehold.it/150/771796"
  // },
  // {
  // "albumId": 1,
  // "id": 3,
  // "title": "officia porro iure quia iusto qui ipsa ut modi",
  // "url": "http://placehold.it/600/24f355",
  // "thumbnailUrl": "http://placehold.it/150/24f355"
  // }

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Welcome5(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Welcome5.fromJson(map5) {
    return Welcome5(map5['albumId'], map5['id'], map5['title'], map5['url'],
        map5['thumbnailUrl']);
  }
}
