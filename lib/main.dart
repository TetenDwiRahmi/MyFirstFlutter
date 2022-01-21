import 'package:crudflutter/ui/ListView.dart';
import 'package:crudflutter/ui/PageBedaFile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Teten"),
      //     backgroundColor: Colors.amber,
      //   ),
      //   body: SafeArea(child: Text("Flutter Pertama"),) //SAfeArea digunakan agar tidak bentrok status bar dengan content
      // )
      home: PageWidgetUmum(), //PANGGIL CLASS DISINI
      //Navigator push named : fungsi sama saja dengan navigator.push pemanggilan pada Navigator Pushnamed Button
      routes: <String, WidgetBuilder>{
        '/page2' : (BuildContext context)=>PageColumn(),
      },
    );
  }
}

class PageWidgetUmum extends StatelessWidget { //ketik "stless" untuk buat class widget
  @override
  Widget build(BuildContext context) {
    return Scaffold( //ni memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
      appBar: AppBar(
        title: Text('Page Widget Umum'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column( //dibuat colomn text "Hai" dan juga menampilkan icon
          children: [
            Text("Menu"),
            Container( //untuk membungkus row dan column
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_alarm, color: Colors.blue,),
                      SizedBox(height: 5.0,), //memberi jarak kebawah secara default
                      Text('Alarm', style: TextStyle(color: Colors.black)) //memberi warna pada text harus diberi properti style terlebih dahulu
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_call, color: Colors.blue,),
                      Text('Video', style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.blue,),
                      Text('Phone', style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.inbox, color: Colors.blue,),
                      Text('Inbox', style: TextStyle(color: Colors.black))
                    ],
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Page Button'),
              onPressed: (){
                //Navigator push : untuk pindah activity dengan manggil class tapi di file yang sama
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageRow()));
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text('Page Beda File Button'),
              onPressed: (){
                //Navigator push : untuk pindah activity dengan manggil class di beda file || PageBedaFile.dart
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageColumn()));
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text('Navigator Pushnamed Button'),
              onPressed: (){
                //Navigator push named: untuk pindah activity dengan manggil class di classMyApp
                Navigator.of(context).pushNamed('/page2');
              },
            ),
            FlatButton(
              color: Colors.blue,
              child: Text('List View Button'),
              onPressed: (){
                //Navigator push named: untuk pindah activity dengan manggil class di beda file || ListView.dart
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageListView()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Username'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //ni memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
      appBar: AppBar(
        title: Text('Page Row'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column( //dibuat colomn text "Hai" dan juga menampilkan icon
          children: [
            Text("Page Row"),
            Container( //untuk membungkus row dan column
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_alarm, color: Colors.blue,),
                      SizedBox(height: 5.0,), //memberi jarak kebawah secara default
                      Text('Alarm', style: TextStyle(color: Colors.black)) //memberi warna pada text harus diberi properti style terlebih dahulu
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.video_call, color: Colors.blue,),
                      Text('Video', style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.phone, color: Colors.blue,),
                      Text('Phone', style: TextStyle(color: Colors.black))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.inbox, color: Colors.blue,),
                      Text('Inbox', style: TextStyle(color: Colors.black))
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

 
