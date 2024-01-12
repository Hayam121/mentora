// import 'package:button_curve_navigation/pages/people.dart';
// import 'package:button_curve_navigation/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentora/screens/chat/chat.dart';
import 'package:mentora/screens/community/coummunity.dart';
import 'package:mentora/screens/home/home.dart';
import 'package:mentora/screens/notifications/notification.dart';
import 'screens/profile/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final items = const [
    Icon(Icons.people, size: 30,color: Colors.white,),
    Icon(Icons.chat, size: 30,color: Colors.white,),
    Icon(Icons.home, size: 30,color: Colors.white,),
    Icon(Icons.notifications, size: 30,color: Colors.white,),
    Icon(Icons.person, size: 30,color: Colors.white,)
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curved Navigation Bar'),
        backgroundColor: Color(0xff206F7E),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },color:  Color(0xff206F7E),
        backgroundColor:  Color.fromARGB(255, 255, 255, 255),
        height: 70,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
        color:  Color.fromARGB(255, 255, 255, 255),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget = const Community();
        break;
        case 1:
        widget = const Chat();
        break;
        case 2:
        widget = const Homee();
        break;
        case 3:
        widget = const Notifications();
        break;
      case 4:
        widget = const Profile();
        break;
      default:
        widget = const Homee();
        break;
    }
    return widget;
  }
}