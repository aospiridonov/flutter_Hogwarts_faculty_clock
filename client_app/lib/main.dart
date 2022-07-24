import 'package:client_app/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hogwarts houses clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SchoolPage(),
      routes: {
        BranchPage.routeName: (_) => const BranchPage(),
        HousePage.routeName: (_) => const HousePage(),
        SchoolPage.routeName: (_) => const SchoolPage(),
        BranchEditPage.routeName: (_) => const BranchEditPage(),
      },
    );
  }
}
