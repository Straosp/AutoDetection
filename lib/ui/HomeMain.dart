import 'package:auto_detection/ui/fragment/CaseFragment.dart';
import 'package:auto_detection/ui/fragment/HomeFragment.dart';
import 'package:auto_detection/ui/fragment/MineFragment.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeMainPage(),
      );
  }

}
class HomeMainPage extends StatefulWidget {
  const HomeMainPage({super.key});
  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}
class _HomeMainPageState extends State<HomeMainPage> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: controller,
          children: <Widget>[
            HomeFragment(context),
            const CaseFragment(),
            const MineFragment()
          ]
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
         child: TabBar(
          controller: controller,
           labelColor: Colors.blue,
           unselectedLabelColor: Colors.grey,
           tabs: const [
             Tab(
               text: "主页",
               icon: Icon(Icons.home_max_sharp),
             ),
             Tab(
               text: "案例",
               icon: Icon(Icons.cases_sharp),
             ),
             Tab(
               text: "主页",
               icon: Icon(Icons.account_circle_sharp),
             )
           ],
         ),
      ),
    );
  }

}