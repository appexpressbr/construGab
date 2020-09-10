import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF3a447d),
                        Color(0xFF3f4b8b),
                      ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Icon(CupertinoIcons.person_solid, size: 50,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
