import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';
import 'package:project/config/endpoints.dart';
import 'package:fluttertoast/fluttertoast.dart';

class qr extends StatefulWidget {
  @override
  _qrState createState() => _qrState();
}

String selectedValue = 'Option 1';
List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
String selectedValue1 = 'a';
List<String> dropdownItems1 = ['a', 'b', 'c'];
String selectedValue2 = '1';
List<String> dropdownItems2 = ['1', '2', '3'];

class _qrState extends State<qr> {
  String? _qrInfo = 'Scan a QR Code';
  bool camState = false;
  Future knit() async {
    print("==============================");
    // var url = Uri.http("10.0.1.197",'/f/knit.php', {'q': '{http}'});
    var url = Uri.http(BASE_URL, '/f/knit.php');
    print(selectedValue);
    var response = await http.post(url, body: {
      "hole": selectedValue,
      "roleid": _qrInfo,
      "niddle": selectedValue1,
      "countmix": selectedValue2,
    });
    print(response.body);
    var data = json.decode(response.body);
    if (data == "Success") {
      Fluttertoast.showToast(
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        msg: 'User already exist!',
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'Registration Successful',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  qrCallback(String? code) {
    setState(() {
      camState = false;
      _qrInfo = code;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      camState = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (camState == true) {
            setState(() {
              camState = false;
            });
          } else {
            setState(() {
              camState = true;
            });
          }
        },
        child: Icon(Icons.camera),
      ),
      body: camState
          ? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cat2.png"),
                    fit: BoxFit.cover),
              ),
              child: SizedBox(
                height: 1000,
                width: 500,
                child: QRBarScannerCamera(
                  onError: (context, error) => Text(
                    error.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                  qrCodeCallback: (code) {
                    qrCallback(code);
                  },
                ),
              ),
            )
          : Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                      // child: Text(
                      //   "Style ID :" + _qrInfo!,
                      //   style: TextStyle(
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.bold,
                      //       decoration: TextDecoration.underline),
                      // ),
                      ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.orangeAccent, width: 4)),
                    child: Text(
                      "Style ID :" + _qrInfo!,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //        Text(
                  //   'Selected Hole:',
                  //   style: TextStyle(fontSize: 18),
                  //   textAlign: TextAlign.left,
                  // ),
                  // SizedBox(height: 10),
                  // Text(
                  //   selectedValue,
                  //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  //   textAlign: TextAlign.left,
                  // ),
                  // SizedBox(height: 20),
                  // DropdownButton<String>(
                  //   value: selectedValue,
                  //   onChanged: (newValue) {
                  //     setState(() {
                  //       selectedValue = newValue!;
                  //     });
                  //   },
                  //   items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  //     return DropdownMenuItem<String>(
                  //       value: value,
                  //       child: Text(value),
                  //     );
                  //   }).toList(),
                  // ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            'Select Hole:',
                            style: TextStyle(fontSize: 18),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: SizedBox(
                              height: 10,
                            ),
                          ),
                          // Text(
                          //   selectedValue,
                          //   style: TextStyle(
                          //       fontSize: 18, color: Colors.lightBlue),
                          //   textAlign: TextAlign.right,
                          // ),
                          SizedBox(
                            height: 5,
                          ),
                          DropdownButton<String>(
                            value: selectedValue,
                            isExpanded: true,
                            onChanged: (newVal) {
                              setState(() {
                                selectedValue = newVal!;
                              });
                            },
                            items: dropdownItems
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.pinkAccent),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Select Niddle:',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          DropdownButton<String>(
                            value: selectedValue1,
                            isExpanded: true,
                            onChanged: (newVal) {
                              setState(() {
                                selectedValue1 = newVal!;
                              });
                            },
                            items: dropdownItems1
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.pinkAccent),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Select CountMix:',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          DropdownButton<String>(
                            value: selectedValue2,
                            isExpanded: true,
                            onChanged: (newVal) {
                              setState(() {
                                selectedValue2 = newVal!;
                              });
                            },
                            items: dropdownItems2
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.pinkAccent),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              knit();
                            },
                            child: Container(
                              height: 53,
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black12.withOpacity(.2),
                                        offset: const Offset(2, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(100)
                                      .copyWith(
                                          bottomRight:
                                              const Radius.circular(0)),
                                  gradient: LinearGradient(colors: [
                                    Colors.purple.shade600,
                                    Colors.amber.shade900
                                  ])),
                              child: Text('Save',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.8),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              knit();
                            },
                            child: Container(
                              height: 53,
                              width: double.infinity,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        color: Colors.black12.withOpacity(.2),
                                        offset: const Offset(2, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(100)
                                      .copyWith(
                                          bottomRight:
                                              const Radius.circular(0)),
                                  gradient: LinearGradient(colors: [
                                    Colors.purple.shade600,
                                    Colors.amber.shade900
                                  ])),
                              child: Text('Update',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(.8),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
    );
  }
}
