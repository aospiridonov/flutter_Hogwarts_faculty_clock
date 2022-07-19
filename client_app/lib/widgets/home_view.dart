import 'package:client_app/repositories/dummy_hogwarts_branch_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';

import 'chart.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HogwartsBloc>().state;
    return state.when(
      loaded: (branch) => Scaffold(
        appBar: AppBar(
          title: Text(branch.name),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[100],
          child: BlocProvider(
            create: (context) => HogwartsBranchBloc(
              DummyHogwartsBranchRepository(0),
            )..add(
                const HogwartsBranchEvent.fetch(),
              ),
            child: const Chart(),
          ),
        ),
      ),
      initial: () => const Center(
        child: Text('Splash screen'),
      ),
      error: () => Container(),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(strokeWidth: 2),
      ),
    );
  }
}
