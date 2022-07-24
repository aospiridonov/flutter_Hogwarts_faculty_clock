import 'package:flutter/material.dart';

class DumbledorePage extends StatelessWidget {
  static const routeName = '/dumbledore';
  const DumbledorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dumbledore'),
        centerTitle: false,
      ),
      body: const Center(
        child: Text('Im here'),
      ),
    );
  }
}
