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

class CustomeGridView extends StatefulWidget {
  @override
  _CustomeGridViewState createState() => _CustomeGridViewState();
}

class _CustomeGridViewState extends State<CustomeGridView> {

  //deklarasi data list
  List<Container> daftarMakananPadang = [];

  var itemMakanan = [
      {"nama" : "Gulai Ayam", "gambar" : "gulai ayam.jpg", "Keterangan" : "Ini Gulai Ayam"},
      {"nama" : "Gulai Ikan", "gambar" : "gulai ikan.jpg", "Keterangan" : "Ini Gulai Ikan"},
      {"nama" : "Perkedel", "gambar" : "perkedel.png", "Keterangan" : "Ini Perkedel"},
      {"nama" : "Rendang", "gambar" : "rendang.jpg", "Keterangan" : "Ini Rendang"},
      {"nama" : "Sate Padang", "gambar" : "sate_padang.jpg", "Keterangan" : "Ini Sate Padang"},
      {"nama" : "Soto Padang", "gambar" : "soto.jpg", "Keterangan" : "Ini Soto Padang"},
  ];

  _buatDataListMakanan() async{
    for(var i = 0; i<itemMakanan.length; i++){
      final dataMakanan = itemMakanan[i];
      final gambarMakanan = dataMakanan["gambar"];
      // ignore: unnecessary_new
      daftarMakananPadang.add(new Container(
        padding: EdgeInsets.all(10),
        child: Card(
          child: InkWell(
            onTap: (){

            },
            child: Column(
              children: [
                Hero(
                  tag: dataMakanan["nama"].toString(),
                  child: Image.asset('assets/gambar/$gambarMakanan', height: 100, width: 125, fit: BoxFit.contain,),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(dataMakanan["nama"].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ));
      
    }
  }
  
  //proses background untuk mengambil data
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataListMakanan();
  }

  //menampilkan ke view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan Padang'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(crossAxisCount: 2, children: daftarMakananPadang,),
    );
  }
}
