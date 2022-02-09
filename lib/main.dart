import 'package:flutter/material.dart';

import 'core/view/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: TextTheme(
            headline6: TextStyle(
                fontSize: 20.0,
                color: Colors.black54,
                fontWeight: FontWeight.w500),
          ),
        ),
        home: const HomePage());
  }
}
