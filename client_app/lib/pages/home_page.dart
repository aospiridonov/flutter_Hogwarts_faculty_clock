import 'package:client_app/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/widgets/home_view.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final branshId = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
    return BlocProvider(
      create: (context) =>
          HogwartsBloc(GrpcSchoolRepository()) //DummyHogwartsRepository
            ..add(HogwartsEvent.fetch(id: branshId)),
      child: const HomeView(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
