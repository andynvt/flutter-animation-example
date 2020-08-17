import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  double _width = 200;
  double _opacity = 1;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text('margin'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.pink;
                });
              },
              child: Text('color'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: Text('width'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text('opacity'),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Text('Hideee'),
            ),
          ],
        ),
      ),
    );
  }
}
