import 'package:flutter/cupertino.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: Text("       "),
      ),
    );
  }
}
