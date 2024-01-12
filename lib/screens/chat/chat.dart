import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: [
           Text('Chat Page', style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),),
          SizedBox(height: 100,),
          CircleAvatar(
            radius: 70,
            child: Icon(Icons.people, size: 120,),
          ),
          SizedBox(height: 100,),
          Text('Chat Page Content', style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),),
        ],
      ),
    );
  }
}