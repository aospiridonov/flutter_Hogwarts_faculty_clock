import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/repositories/dummy_hogwarts_repository.dart';
import 'package:client_app/widgets/home_view.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HogwartsBloc(DummyHogwartsRepository())
        ..add(const HogwartsEvent.fetch(id: 0)),
      child: const HomeView(),
    );
  }
}
