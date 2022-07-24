import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:client_app/widgets/branches_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'branch_edit_page.dart';

//TODO: list with Branches and button edit
class SchoolPage extends StatelessWidget {
  static const routeName = '/hogwarts';

  const SchoolPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => GrpcSchoolService(),
      dispose: (_, GrpcSchoolService service) => service.dispose(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hogwarts'),
          centerTitle: true,
        ),
        body: BlocProvider(
          create: (context) => BranchesBloc(
              GrpcSchoolRepository(context.read<GrpcSchoolService>()))
            ..add(const BranchesEvent.fetch()),
          child: const BranchesView(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(BranchEditPage.routeName);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
