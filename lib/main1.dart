import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarGridView(),
    );
  }
}

class BelajarGridView extends StatelessWidget {
  var gbr = [
    {
      'img': 'https://i.postimg.cc/brYrxCGn/bor.jpg'
    },
    {
      'img': 'https://i.postimg.cc/HxLCyynk/mitsuki.jpg'
    },
    {
      'img': 'https://i.postimg.cc/J01KnNzp/goku.jpg'
    },
    {
      'img': 'https://i.postimg.cc/QCwBPDwc/sisui.jpg'
    },
    {
      'img': 'https://i.postimg.cc/vB1xvDSG/itaci.jpg'
    },
    {
      'img': 'https://i.postimg.cc/ZqW5G2Pc/saitahu.webp'
    },
    {
      'img': 'https://i.postimg.cc/dtWvJnVS/levi.jpg'
    },
    {
      'img': 'https://i.postimg.cc/SQ37HbWZ/mikasa.jpg'
    },
    {
      'img': 'https://i.postimg.cc/mgRCwRHK/erehh.jpg'
    },
    {
      'img': 'https://i.postimg.cc/J4Rdywh4/nana.jpg'
    },
    {
      'img': 'https://i.postimg.cc/wTBdsRWr/kakashi.jpg'
    },
    {
      'img': 'https://i.postimg.cc/pL68tj7M/genos.jpg'
    },
    {
      'img': 'https://i.postimg.cc/XvPTFsz1/bendedeta.jpg'
    },
    {
      'img': 'https://i.postimg.cc/J4Rdywh4/nana.jpg'
    },
    {
      'img': 'https://i.postimg.cc/V6cW3MrL/alufed.jpg'
    },
    {
      'img': 'https://i.postimg.cc/SKb9s4yg/pani.jpg'
    },
    {
      'img': 'https://i.postimg.cc/yxxg5YP8/ly-ia.jpg'
    },
    {
      'img': 'https://i.postimg.cc/Kzz8cpg9/alok.webp'
    },
    {
      'img': 'https://i.postimg.cc/qqQftpVy/otsusuki-ramen.jpg'
    },
    {
      'img': 'https://i.postimg.cc/RV0ys5xp/sasuke.jpg'
    },
  ];

  var date = DateTime.now();

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              // centerTitle: true,
              title: Text("Gallery"),
            ),
            body: GridView.count(
                crossAxisCount: 2,
                children: gbr.map((index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('${index['img']}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    margin: EdgeInsets.all(5),
                    child: ListTile(
                      contentPadding: EdgeInsets.fromLTRB(10, 110, 0, 0),
                      subtitle: Text(
                        date.day.toString() + '/' + date.month.toString() + '/' + date.year.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }).toList())));
  }
}
