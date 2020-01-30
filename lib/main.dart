import 'package:flutter/material.dart';
import 'package:test_platform_view/test_platform_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Stack(
        children: <Widget>[
          TestPlatformView(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRaisedButton(),
                _buildMaterialInkWell(),
                _buildInkWell(),
                _buildGestureDetector(),
                _buildFloatingActionButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  RaisedButton _buildRaisedButton() {
    return RaisedButton(
      child: Text('Nothing'),
      onPressed: () {
        print('RaisedButton tapped');
      },
    );
  }

  Material _buildMaterialInkWell() {
    return Material(
      child: InkWell(
        onTap: () {
          print("MaterialInkWell tapped");
        },
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.red,
          child: Text('MaterialInkWell'),
        ),
      ),
    );
  }

  InkWell _buildInkWell() {
    return InkWell(
      onTap: () {
        print("InkWell tapped");
      },
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.blue,
        child: Text('InkWell'),
      ),
    );
  }

  GestureDetector _buildGestureDetector() {
    return GestureDetector(
      onTap: () {
        print('GestureDetector tapped');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        color: Colors.amber,
        child: Text('GestureDetector'),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      child: Text('FAB'),
      onPressed: () {
        print('FloatingActionButton tapped');
      },
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(),
    );
  }
}
