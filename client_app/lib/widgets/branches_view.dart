import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/pages/pages.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'branch_list_tile.dart';

class BranchesView extends StatelessWidget {
  const BranchesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: getIt get SchoolRepository
    return BlocBuilder<BranchesBloc, BranchesState>(
      bloc: BranchesBloc(GrpcSchoolRepository())
        ..add(const BranchesEvent.fetch()),
      builder: (context, state) => state.when(
        initial: () => const Center(
          child: Text('Initial'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2,
          ),
        ),
        loaded: (branches) => ListView.builder(
          itemCount: branches.length,
          itemBuilder: (BuildContext context, int index) => BranchListTile(
            branch: branches[index],
            onDismissed: (direction) {},
            onTap: () {
              Navigator.of(context).pushNamed(
                BranchPage.routeName,
                arguments: branches[index].id,
              );
            },
          ),
        ),
        failure: () => const Center(
          child: Text('Error'),
        ),
      ),
    );
  }
}
