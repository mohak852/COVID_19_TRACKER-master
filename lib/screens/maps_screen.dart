import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class MapsScreen extends StatefulWidget {
  static const routeName = '/maps_screen';
  final int index;
  MapsScreen({this.index});

  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> urls = [
    'https://www.bing.com/covid',

  ];

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Live Map'),
        centerTitle: true,
      ),
      //show Map according to the selection from endDrawer
      url: urls[widget.index],
      withZoom: true,
      withLocalStorage: true,
    );
  }
}
