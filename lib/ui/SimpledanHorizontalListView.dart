import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView & GridView'),
      ),

      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
          ),
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView & GridView'),
      ),

     body: Container(
       margin: EdgeInsets.symmetric(vertical: 20),
       //margin : jarak antar widget
       //padding : jarak didalam objek
       height: 200,

       child: ListView(
         scrollDirection: Axis.horizontal,
         children: [
           Container(
             height: 160,
             width: 200,
             color: Colors.red
           ),

           Container(
               height: 160,
               width: 200,
               color: Colors.purple
           ),

           Container(
               height: 160,
               width: 200,
               color: Colors.green
           ),

           Container(
               height: 160,
               width: 200,
               color: Colors.blue
           ),
         ],
       ),
     ),
    );
  }
}
