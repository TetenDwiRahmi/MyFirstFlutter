import 'package:crudflutter/ui/SimpledanCustomGridView.dart';

import 'SimpledanHorizontalListView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView & GridView'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ListView & GridView'),
            Container(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                child: Text('Simple List'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleList()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                child: Text('Horizontal List'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HorizontalList()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                child: Text('Simple GridView'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleGridView()));
                },
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
