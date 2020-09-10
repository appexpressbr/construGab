import 'package:construrapido_app/ios/FavoritosPage.dart';
import 'package:construrapido_app/ios/InicioPage.dart';
import 'package:construrapido_app/ios/Login.dart';
import 'package:construrapido_app/ios/OfertasPage.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    InicioPage(),
    OfertasPage(),
    FavoritosPage(),
    Login(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: CupertinoTextField(
                  prefix: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      IconData(0xF4A4,
                          fontFamily: "CupertinoIcons",
                          fontPackage: CupertinoIcons.iconFontPackage),
                      color: CupertinoColors.darkBackgroundGray,
                    ),
                  ),
                  placeholder: 'O que você procura?',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
              child: FittedBox(
                fit: BoxFit.contain,
                child: CupertinoButton(
                  child: Icon(
                      IconData(0xF370,
                          fontFamily: "CupertinoIcons",
                          fontPackage: CupertinoIcons.iconFontPackage),
                      size: 80.0,
                      color: CupertinoColors.black),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        backgroundColor: CupertinoColors.systemGroupedBackground,
      ),
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    IconData(0xF38F,
                        fontFamily: "CupertinoIcons",
                        fontPackage: CupertinoIcons.iconFontPackage),
                    color: CupertinoColors.black,
                  ),
                  title: Text(
                    'Início',
                    style: TextStyle(color: CupertinoColors.black),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconData(0xF2AA,
                        fontFamily: "CupertinoIcons",
                        fontPackage: CupertinoIcons.iconFontPackage),
                    color: CupertinoColors.black,
                  ),
                  title: Text(
                    'Ofertas',
                    style: TextStyle(color: CupertinoColors.black),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconData(0xF443,
                        fontFamily: "CupertinoIcons",
                        fontPackage: CupertinoIcons.iconFontPackage),
                    color: CupertinoColors.black,
                  ),
                  title: Text(
                    'Favoritos',
                    style: TextStyle(color: CupertinoColors.black),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconData(0xF419,
                        fontFamily: "CupertinoIcons",
                        fontPackage: CupertinoIcons.iconFontPackage),
                    color: CupertinoColors.black,
                  ),
                  title: Text(
                    'Minha Conta',
                    style: TextStyle(color: CupertinoColors.black),
                  )),
            ],
            backgroundColor: CupertinoColors.systemGroupedBackground,
          ),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return InicioPage();
                break;
              case 1:
                return OfertasPage();
                break;
              case 2:
                return FavoritosPage();
                break;
              case 3:
                return Login();
              default:
                return InicioPage();
                break;
            }
          }),
    );
  }
}
