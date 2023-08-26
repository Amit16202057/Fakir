import 'package:flutter/material.dart';
import 'edit.dart';
import 'package:http/http.dart' as http;
import 'view.dart';

class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({required this.index, required this.list});
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> {
  void deleteData() {
    var url = "http://10.0.1.197/f/deleteData.php";
    http.post(url as Uri, body: {'id': widget.list[widget.index]['id']});
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
          "Are You sure want to delete '${widget.list[widget.index]['roleid']}'"),
      actions: <Widget>[
        new ElevatedButton(
          child: new Text(
            "OK DELETE!",
            style: new TextStyle(color: Colors.black),
          ),
          // color: Colors.red,
          onPressed: () {
            deleteData();
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Homei(),
            ));
          },
        ),
        new ElevatedButton(
          child: new Text("CANCEL", style: new TextStyle(color: Colors.black)),
          // color: Colors.green,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );

    // showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
          new AppBar(title: new Text("${widget.list[widget.index]['roleid']}")),
      body: new Container(
        height: 270.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  "Role: ${widget.list[widget.index]['roleid']}",
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Text(
                  "Hole : ${widget.list[widget.index]['hole']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Needle : ${widget.list[widget.index]['niddle']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Count : ${widget.list[widget.index]['countmix']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new ElevatedButton(
                      child: new Text("EDIT"),
                      // color: Colors.green,
                      onPressed: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new EditData(
                          list: widget.list,
                          index: widget.index,
                        ),
                      )),
                    ),
                    new ElevatedButton(
                      child: new Text("DELETE"),
                      // color: Colors.red,
                      onPressed: () => confirm(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
