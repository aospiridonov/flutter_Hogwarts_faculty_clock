import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:client_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchEditPage extends StatelessWidget {
  static const routeName = '/branchEdit';
  const BranchEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditBranchBloc(
        GrpcSchoolRepository(
          GrpcSchoolService(), //TODO: give up tree or params
        ),
      ),
      child: BlocListener<EditBranchBloc, EditBranchState>(
        listenWhen: (previous, current) =>
            previous.status != current.status &&
            current.status == EditStatus.success,
        listener: (context, state) => Navigator.of(context).pop(),
        child: const BranchEditView(),
      ),
    );
  }
}
