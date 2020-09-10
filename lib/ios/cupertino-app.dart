import 'package:construrapido_app/ios/home.page.dart';
import 'package:flutter/cupertino.dart';


class MyCupertinoApp extends StatefulWidget {
  @override
  _MyCupertinoAppState createState() => _MyCupertinoAppState();
}

class _MyCupertinoAppState extends State<MyCupertinoApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}