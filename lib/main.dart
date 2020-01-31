import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.teal,
          child: new Icon(Icons.assignment),
          onPressed: (){},
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Stack(
                children: <Widget>[
                  backgroundHeader(), summaryCash(),
                ],
              ),
                cardDetail('Makan Makan','Ulang Tahun','150.000','out'),
                cardDetail('Bonus','Dari Atasan','100.000','in'),
                cardDetail('Beli Bensin','Berangkat Kerja','20.000','out'),
            ],
          ),
        ),
      ),
    );
  }
}
Widget cardDetail(title, description, price, type){
  return Card(
    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    elevation: 8,
    child: ListTile(
      leading: Icon(
        type == 'out' ? Icons.subdirectory_arrow_left:Icons.subdirectory_arrow_right,
        color: type == 'out' ? Colors.redAccent:Colors.lightGreen,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(description),
      trailing: Text(
        "Rp "+price,
        style: TextStyle(color: type == 'out' ? Colors.redAccent:Colors.lightGreen),
      ),
    ),
  );
}

Widget summaryCash()
{
  return Positioned(
    top: 180.0,
    left: 20.0,
    child: Container(
      width: 350.0,
      height: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Dana"),
                Divider(),
                Text("Rp 500.000", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text("Pengeluaran"),
                Divider(),
                Text("Rp. 250.000", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget backgroundHeader(){
  return Container(
    height: 300.0,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 60, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Ryan_Ryan",style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),),
          Text("238108124129", style: TextStyle(fontSize: 15,color: Colors.white),),
        ],
      ),
    ),
  );
}

