import 'package:flutter/material.dart';

import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
// import 'MyDropDown.dart';
import 'qr.dart';
// import 'knit1.dart';
// import 'dropdown.dart';
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'home.dart';

void main() => runApp(KNIT());

class KNIT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KNIT MODULE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyKnitPage(),
    );
  }
}

class MyKnitPage extends StatefulWidget {
  @override
  _MyKnitPageState createState() => _MyKnitPageState();
}

class _MyKnitPageState extends State<MyKnitPage> {
  String result = "Hello World...!";
  Future _scanQR() async {
    try {
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result = cameraScanResult!; // setting string result with cameraScanResult
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],

          title: Text(
            '  QR Scanner',
          ),
        ),
        bottomSheet: TabBarView(
          children: [
            qr(),
            // DropdownButtonPage(),
            //  knit1()
            // MyDropDown(),

          ],
        ),
        
      ),
    );
  }
}


