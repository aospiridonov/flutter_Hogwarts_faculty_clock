import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/widgets/branch_view.dart';
import 'package:provider/provider.dart';

//TODO: Convert to statless
class BranchPage extends StatefulWidget {
  static const routeName = '/branch';

  const BranchPage({Key? key}) : super(key: key);

  @override
  State<BranchPage> createState() => _BranchPageState();
}

class _BranchPageState extends State<BranchPage> {
  @override
  Widget build(BuildContext context) {
    final branchId = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
    return Provider(
      create: (_) => GrpcBranchService(branchId),
      dispose: (_, GrpcBranchService service) => service.dispose(),
      lazy: false,
      child: BlocProvider(
        create: (context) => BranchBloc(
          GrpcBranchRepository(context.read<GrpcBranchService>()),
        )..add(
            const BranchEvent.fetch(),
          ),
        child: const BranchView(),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
