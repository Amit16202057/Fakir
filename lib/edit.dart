import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/qr.dart';
import './main.dart';

class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({required this.list, required this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {
  late TextEditingController controllerselectedValue;
  // late TextEditingController controller_qrInfo;
  late TextEditingController controllerselectedValue1;
  late TextEditingController controllerselectedValue2;
  // String? _qrInfo = 'Scan a QR Code';
  void editData() {
    var url = "http://10.0.1.197/PHP/editdata.php";
    http.post(url as Uri, body: {
      "id": widget.list[widget.index]['id'],
      "hole": selectedValue,
      // "roleid": _qrInfo,
      "niddle": selectedValue1,
      "countmix": selectedValue2,
    });
  }

  @override
  void initState() {
    controllerselectedValue =
        new TextEditingController(text: widget.list[widget.index]['hole']);
    // controller_qrInfo =
    //     new TextEditingController(text: widget.list[widget.index]['roleid']);
    controllerselectedValue1 =
        new TextEditingController(text: widget.list[widget.index]['niddle']);
    controllerselectedValue2 =
        new TextEditingController(text: widget.list[widget.index]['countmix']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDIT DATA"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerselectedValue,
                  decoration: new InputDecoration(
                      hintText: "Item Code", labelText: "Item Code"),
                ),
                new TextField(
                  // controller: controller_qrInfo,
                  decoration: new InputDecoration(
                      hintText: "Item Name", labelText: "Item Name"),
                ),
                new TextField(
                  controller: controllerselectedValue1,
                  decoration: new InputDecoration(
                      hintText: "Price", labelText: "Price"),
                ),
                new TextField(
                  controller: controllerselectedValue2,
                  decoration: new InputDecoration(
                      hintText: "Stock", labelText: "Stock"),
                ),
                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                // new ElevatedButton(
                //   child: new Text("EDIT DATA"),
                //   // color: Colors.blueAccent,
                //   onPressed: () {
                //     editData();
                //     Navigator.of(context).push(new MaterialPageRoute(
                //         builder: (BuildContext context) => new Home()));
                //   },
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
