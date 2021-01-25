import 'package:animated_drawer_and_menu_view/animated_drawer.dart';
import 'package:animated_drawer_and_menu_view/home_view.dart';
import 'package:animated_drawer_and_menu_view/menu_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedDrawer(
        menuContainer: MenuView(
          userName: "Eduardo Sant'Ana Sales",
          userEmail: "https://github.com/edusantsales",
          themeColor: Colors.blue[900],
          itemIcon1: Icons.add,
          itemText1: "Menu Item 01",
          onPressedItem1: () {},
          itemIcon2: Icons.apps,
          itemText2: "Menu Item 02",
          onPressedItem2: () {},
          itemIcon3: Icons.inbox,
          itemText3: "Menu Item 03",
          onPressedItem3: () {},
          itemIcon4: Icons.person,
          itemText4: "Menu Item 04",
          onPressedItem4: () {},
          itemIcon5: Icons.info_outline,
          itemText5: "Menu Item 05",
          onPressedItem5: () {},
          iconLogout: Icons.logout,
          textLogout: "Sair",
          onPressedLogout: () {},
        ),
        viewContainer: HomeView(),
        icon1: Icons.add,
        onPressedIcon1: () {},
        icon2: Icons.apps,
        onPressedIcon2: () {},
        themeColor: Colors.lightBlue[600],

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
