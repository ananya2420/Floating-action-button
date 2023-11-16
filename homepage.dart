import 'package:flutter/material.dart';
import 'page/dashboard.dart';
import 'page/chat.dart';
import 'page/setting.dart';
import 'page/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab=0;
  final List<Widget> screens = [
    Dashboard(),
    chat(),
    profile(),
    setting()
  ];
  final pageStorageBucket bucket = pageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageStorage(
        child: currentScreen,
        bucket: bucket,

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      )
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 45,
                        onPressed: (){
                        setState(() {
                          currentScreen = Dashboard();
                          currentTab=0;
                        });

                        }
                        Child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icons.dashboard,
                      color: currentTab == 0 ? blue: Colors.grey,
                    ],
                  Text(
                'Dashboard',
                style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey),
              ),

            ),
                    )
                  ],
                )
              ],
            )
          ),
        ),
    );
  }
}