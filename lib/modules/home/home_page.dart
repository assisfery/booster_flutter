import 'package:booster/app.dart';
import 'package:booster/shared/themes/app_colors.dart';
import 'package:booster/shared/themes/app_texts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBar(),
      bottomNavigationBar: bottomNav(),
      body: body(),
      floatingActionButton: floatingAction(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text("Booster"),
      elevation: 0,
      backgroundColor: AppColors.primary,
      automaticallyImplyLeading: false,
    );
  }

  Widget body() {
    return bodyPages[selectedPage];
  }

  var bodyPages = [

    Container(
      child: Column(
        children: [
          Center(child: Text("Home", style: AppTexts.titleBody,)),
        ],
      ),
    ),

    Container(
      child: Text("User", style: AppTexts.titleBody),
    )

  ];

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: AppColors.bottomNavBackground,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      currentIndex: selectedPage,
      onTap: (value) {
        selectedPage = value;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
      ],
    );
  }

  FloatingActionButton floatingAction()
  {
    return FloatingActionButton(
        onPressed: (){

      },
        child: Icon(Icons.add),
        elevation: 0,
        backgroundColor: AppColors.floatingActionBackground,
      );
  }
}
