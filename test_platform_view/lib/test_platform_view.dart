import 'dart:ui' as ui;
import 'dart:html';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter/material.dart';

class TestPlatformViewPlugin {
  static void registerWith(Registrar registrar) {
    return TestPlatformViewPlatform.instance.initialize();
  }
}

class TestPlatformViewPlatform {
  static TestPlatformViewPlatform _instance = TestPlatformViewPlatform();
  static TestPlatformViewPlatform get instance => _instance;
  static set instance(TestPlatformViewPlatform instance) {
    _instance = instance;
  }

  final DivElement _divElement = DivElement();
  void initialize() {
    _divElement.id = 'ciao';
    _divElement.style.backgroundColor = '#ffcc99';
    _divElement.onClick.listen((_) {
      print('TestPlatformView tapped');
    });
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry
        .registerViewFactory('test', (int viewId) => _divElement);
  }

  Widget buildView() {
    return HtmlElementView(viewType: 'test');
  }
}

class TestPlatformView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TestPlatformViewPlatform.instance.buildView();
  }
}
