import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BlocProvider(
        create: (context) =>
            ConnectionsBloc()..add(const ConnectionsEventFetch()),
        child: Container(
          color: Colors.blue[200],
          child: const ConnectionsView(),
        ),
      ),
    );
  }
}
