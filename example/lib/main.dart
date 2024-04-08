import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_desktop_cef_web/cef_widget.dart';
import 'package:flutter_desktop_cef_web/flutter_desktop_cef_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FlutterDesktopCefWeb web = FlutterDesktopCefWeb();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            GestureDetector(
              onTap: () {
                print('click 1');
                web.setUrl('https://www.millie.co.kr/?my=flutter');
              },
              child: Icon(
                Icons.access_alarm,
                size: 18.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('click 2');
                web.setUrl('https://flutter.dev/');
              },
              child: Icon(
                Icons.access_time_filled_sharp,
                size: 18.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('click 3');
                web.executeJs('test');
              },
              child: Icon(
                Icons.account_tree,
                size: 18.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('click 4');
                web.showDevtools();
              },
              child: Icon(
                Icons.add_alert_sharp,
                size: 18.0,
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              CefWidget(
                url: "https://flutter.dev/",
                web: web,
              )
            ],
          ),
        ),
      ),
    );
  }
}
