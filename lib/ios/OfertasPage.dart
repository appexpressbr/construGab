import 'package:flutter/cupertino.dart';


class OfertasPage extends StatefulWidget {
  @override
  _OfertasPageState createState() => _OfertasPageState();
}

class _OfertasPageState extends State<OfertasPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: Text("       OFERTAS"),
      ),
    );
  }
}
