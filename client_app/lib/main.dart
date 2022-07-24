import 'package:client_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  BlocOverrides.runZoned(() => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hogwarts houses clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        HomePage.routeName: (_) => const HomePage(),
        SchoolPage.routeName: (_) => const SchoolPage(),
        DumbledorePage.routeName: (_) => const DumbledorePage(),
        BranchPage.routeName: (_) => const BranchPage(),
        HousePage.routeName: (_) => const HousePage(),
        BranchEditPage.routeName: (_) => const BranchEditPage(),
      },
    );
  }
}
