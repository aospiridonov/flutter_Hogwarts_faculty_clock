import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';

import 'chart_view.dart';

class BranchView extends StatelessWidget {
  const BranchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<BranchBloc>();
    final state = bloc.state;

    return Scaffold(
      appBar: AppBar(
        title: Text(bloc.branch.name),
        centerTitle: true,
      ),
      body: state.when(
        initial: () => const Center(
          child: Text('Initial state'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(strokeWidth: 2),
        ),
        loaded: (branch) => Container(
          color: Colors.grey[100],
          child: const ChartView(),
        ),
        error: () => const Center(
          child: Text('Connection problem'),
        ),
      ),
    );
  }
}
