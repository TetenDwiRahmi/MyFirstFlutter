import 'package:flutter/material.dart';

class PageColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //ni memiliki beberapa parameter yang biasa kita gunakan seperti appBar untuk membuat AppBar, body untuk bagian tubuhnya, atau kita juga bisa menambahkan floating action bar, maupun mengganti warna background bodynya.
      appBar: AppBar(
        title: Text('Page Column'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column( //dibuat colomn text "Hai" dan juga menampilkan icon
          children: [
            Text("Page Column"),
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