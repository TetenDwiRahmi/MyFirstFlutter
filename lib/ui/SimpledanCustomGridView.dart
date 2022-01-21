import 'package:flutter/material.dart';

class SimpleGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple GridView'),
        backgroundColor: Colors.blue,
      ),

      body: GridView.count(crossAxisCount: 3,
        children: List.generate(12, (index){
          int nIndex = index + 1;
          String dataIndex = "$nIndex";
              return Center(
                child: Container(
                  color: Colors.amber,
                  margin:EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Text(
                    "Data Text ke  - $dataIndex", style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              );
          }),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}