import 'package:client_app/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/widgets/home_view.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HogwartsBloc(GrpcHogwartsRepository()) //DummyHogwartsRepository
            ..add(const HogwartsEvent.fetch(id: 0)),
      child: const HomeView(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
