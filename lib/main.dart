import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.postimg.cc/brYrxCGn/bor.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 40.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            left: 40.0,
            top: 150.0,
            child: Text("Senin, 23 Mei 2022", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
              bottom: 48.0,
              left: 10.0,
              right: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.contact_mail,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.audiotrack,
                    color: Colors.green,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.maps_home_work,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                  Icon(
                    Icons.gamepad,
                    color: Colors.blue,
                    size: 36.0,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
