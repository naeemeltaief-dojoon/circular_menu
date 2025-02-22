import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Flutter Circular Menu'),
        ),
        body: Center(
          child: CircularMenu(
            alignment: Alignment.topCenter,
            toggleButtonMargin: 10,
            toggleButtonPadding: 10,
            toggleButtonSize: 40,
            backgroundWidget: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 28),
                  children: <TextSpan>[
                    TextSpan(
                      text: _colorName,
                      style:
                          TextStyle(color: _color, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' button is clicked.'),
                  ],
                ),
              ),
            ),
            toggleButtonColor: Colors.pink,
            toggleButtonLabel: Text('Click'),
            items: [
              CircularMenuItem(
                iconSize: 30,
                buttonLabel: Text('Home'),
                  icon: Icons.home,
                  color: Colors.green,
                  onTap: () {
                    setState(() {
                      _color = Colors.green;
                      _colorName = 'Green';
                    });
                  }),
              CircularMenuItem(
                  icon: Icons.search,
                  color: Colors.blue,
                  onTap: () {
                    setState(() {
                      _color = Colors.blue;
                      _colorName = 'Blue';
                    });
                  }),
              // CircularMenuItem(
              //     icon: Icons.settings,
              //     color: Colors.orange,
              //     onTap: () {
              //       setState(() {
              //         _color = Colors.orange;
              //         _colorName = 'Orange';
              //       });
              //     }),
              // CircularMenuItem(
              //     icon: Icons.chat,
              //     color: Colors.purple,
              //     onTap: () {
              //       setState(() {
              //         _color = Colors.purple;
              //         _colorName = 'Purple';
              //       });
              //     }),
              // CircularMenuItem(
              //     icon: Icons.notifications,
              //     color: Colors.brown,
              //     onTap: () {
              //       setState(() {
              //         _color = Colors.brown;
              //         _colorName = 'Brown';
              //       });
              //     })
            ],
          ),
        ),
      ),
    );
  }
}
