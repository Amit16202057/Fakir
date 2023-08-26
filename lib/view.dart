import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/qr.dart';
import './Detail.dart';
// import './adddata.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Store",
    home: new Homei(),
  ));
}

class Homei extends StatefulWidget {
  @override
  _HomeiState createState() => new _HomeiState();
}

// var data = await getData(Uri.parse('http://10.0.2.2:5000/passg'));
class _HomeiState extends State<Homei> {
  Future<List> getdata() async {
    var data = await http.get(Uri.parse("http://10.0.1.197/f/getdata.php"));

    return json.decode(data.body);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MY STORE"),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => new qr(),
        )),
      ),
      body: FutureBuilder<List>(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              // ignore: unnecessary_new
              ? new ItemList(
                  list: snapshot.data ?? [],
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return new Container(
          padding: const EdgeInsets.all(10.0),
          child: new GestureDetector(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Detail(
                      list: list,
                      index: i,
                    ))),
            child: new Card(
              child: new ListTile(
                title: new Text(list[i]['roleid']),
                leading: new Icon(Icons.widgets),
                subtitle: new Text("hole : ${list[i]['hole']}"),
              ),
            ),
          ),
        );
      },
    );
  }
}
