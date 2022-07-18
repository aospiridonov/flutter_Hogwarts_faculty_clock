import 'package:client_app/widgets/chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hogwarts faculty clock'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[100],
        child: Chart(),
      ),
    );
  }
}
