import 'package:flutter/material.dart';

class BranchEditPage extends StatefulWidget {
  static const routeName = '/branchEdit';
  const BranchEditPage({Key? key}) : super(key: key);

  @override
  State<BranchEditPage> createState() => _BranchEditPageState();
}

class _BranchEditPageState extends State<BranchEditPage> {
  late final _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New branch'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 120,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _controller,
                  ),
                  TextButton(
                    onPressed: () {
                      print(_controller.text);
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
