import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.orange[500]),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: const EdgeInsets.fromLTRB(40, 80, 40, 0),
                color: Colors.orange,
                child: const Text(
                  "Scan Your QR Code",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(100),
                child: QrImage(
                  data: "9526085634",
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("scan your code"),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),
            ],
          ),
        ));
  }
}