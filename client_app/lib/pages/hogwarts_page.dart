import 'package:client_app/widgets/branches_view.dart';
import 'package:flutter/material.dart';

import 'branch_edit_page.dart';

//TODO: list with Branches and button edit
class HogwartsPage extends StatelessWidget {
  static const routeName = '/hogwarts';

  const HogwartsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hogwarts'),
      ),
      body: const BranchesView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(BranchEditPage.routeName);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
